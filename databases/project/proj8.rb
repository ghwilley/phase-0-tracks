#require gems
require 'sqlite3'
require 'faker'


# create sqlite3 database
db = SQLite3::Database.new("barhopping.db")
# db includes bars, long/lat of bar, beers on tap
# second is of beers - name and abv

create_bars_cmd = <<-SQL
  CREATE TABLE  IF NOT EXISTS bars(
    bar_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    lat INT,
    long INT
  )
SQL

create_beers_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS beers(
    beer_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    abv INT
  )
SQL

#combine theses
create_beers_bars_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS bars_beers(
	id INTEGER PRIMARY KEY,
	bar_id INT,
	beer_id INT,
	FOREIGN KEY(bar_id) REFERENCES bars(bar_id),
	FOREIGN KEY(beer_id) REFERENCES beers(beer_id)
	)
SQL

db.execute(create_bars_cmd)
db.execute(create_beers_cmd)
db.execute(create_beers_bars_cmd)

#ADD SOME BEERS
def add_beer(db, name, abv)
  db.execute("INSERT INTO beers (name, abv) VALUES (?, ?)", [name, abv])
end

#ADD SOME BARS
def add_bar(db, name, lat, long)
  db.execute("INSERT INTO bars (name, lat, long) VALUES (?, ?, ?)", [name, lat, long])
end

#COMBINE THE TWOS
def add_beer_bar(db, bar_id, beer_id)
	db.execute("INSERT INTO bars_beers (bar_id, beer_id) VALUES (?, ?)", [bar_id, beer_id])
end


# FIRE OUT STUFF ---------------------------------


# 10.times do
# 	add_beer(db, Faker::Beer.name, Faker::Beer.alcohol)
# end

# add_bar(db, "Von Trier", 43.0604399, -87.8860733)
# add_bar(db, "Nomad World Pub", 43.0528103, -87.8959967)
# add_bar(db, "Wolskis Tavern", 43.0549349, -87.8989793)
# add_bar(db, "Finks", 43.0558364, -87.9007603)
# add_bar(db, "Allium", 43.0572951, -87.8890089)

# 25.times do
# 	add_beer_bar(db, rand(1..5), rand(1..10))
# end

#Display beers available at a bar
def tap_list(db, bar_name)
	db.execute("SELECT beers.name, beers.abv FROM bars_beers,bars,beers WHERE bars_beers.bar_id=bars.bar_id AND bars.bar_id=#{bar_name} AND bars_beers.beer_id=beers.beer_id")
end



#Determines distance. Uses Haversine formula!
def distance loc1, loc2
  rad_per_deg = Math::PI/180  # PI / 180
  rkm = 6371                  # Earth radius in kilometers
  rm = rkm * 1000             # Radius in meters

  dlat_rad = (loc2[0] - loc1[0]) * rad_per_deg  # Delta, converted to rad
  dlon_rad = (loc2[1] - loc1[1]) * rad_per_deg

  lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
  lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

  a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
  c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

  (rm * c) / 1000 # Delta in kilometers
end

#determines time of travel (based on mode of transport)
def traveling (mot, distance)

end

bars = db.execute("SELECT * FROM bars")
beers = db.execute("SELECT * FROM beers")

current_bar_id = 0
current_taps = tap_list(db, current_bar_id +1)
current_bar = bars[current_bar_id][1]
bac = 0.0
abv = 1.0
choice = 'none'

def drink_beer(bac, abv)
	grams = 12 * abv.to_f * 0.789
	weight = 72000 * 0.68 # weight in grams * gender coef
	bac = grams / weight
	bac = bac * 100
	# bac += abv.to_f / 0.15
end


#DRIVER CODE --------------------------------------------------------
# we're giving a set time of 1 hour per drink, male and you weigh 160lbs. deal with it.

if bac >= 0.5
	puts "You wake up in a strange place where movement and light evoke unbearable pain."
else
	while current_bar_id != 'home'
	# while current_bar_id != 'home'
	#display bars to go to
		puts "Where would you like to go? Type \'home\' if you forgot you need to be at DBC in the morning."
			x = 0
			while x < bars.length
				puts "#{x}. #{bars[x][1]}"
				x+=1
			end	
		taps_display = 0
		
		choice = ''

		current_bar_id = gets.chomp
		current_bar = bars[current_bar_id.to_i][1]
		if current_bar_id != 'home'
				while (choice != 'none') && (bac < 0.5)
					if taps_display != 1
						puts "You're currently at #{current_bar}. Your BAC is at #{bac.round(2)}. They have:"
						x = 0
						while x < current_taps.length 
							puts "#{x}. #{current_taps[x][0]} #{current_taps[x][1]}"
							x +=1
						end
						taps_display = 1
					else
							puts "Choose a beer by # from the list, otherwise type \'none\' to go somewhere else."
							choice = gets.chomp
							abv = current_taps[choice.to_i][1]
							abv = abv.chomp('%')
							bac += drink_beer(bac, abv).round(2)
						if choice != 'none'
							puts "You drank #{current_taps[choice.to_i][0]}, your BAC is up to #{bac.round(2)}"
						end
					end
				end
		else
			puts "get home safe."

		end
	end
		
end

