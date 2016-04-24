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


current_bar = bars[0][1]
#DRIVER CODE --------------------------------------------------------
puts "Hello. You're currently at #{current_bar}."
# going between bars
# starting bar
	# show beers on tap
	# choose whatever one you drink
		# repeat until done
	# choose next bar
	# show distance in km
	# choose walk or cab
	# tell how long it took to get there
	# display beer on tap..




# puts distance [Faker::Address.latitude.to_f, Faker::Address.longitude.to_f],[Faker::Address.latitude.to_f, Faker::Address.longitude.to_f]