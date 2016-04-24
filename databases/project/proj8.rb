#require gems
require 'sqlite3'
require 'faker'

# create sqlite3 database
db = SQLite3::Database.new("barhopping.db")
# db includes bars, long/lat of bar, beers on tap
# second table is of beers - name and abv

create_bars_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS bars_table(
    bar_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    lat INT,
    long INT
  )
SQL

create_beers_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS beers_table(
    beer_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    abv INT
  )
SQL

#combine these tables
create_beers_bars_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS bars_beers_table(
	id INTEGER PRIMARY KEY,
	bar_id INT,
	beer_id INT,
	FOREIGN KEY(bar_id) REFERENCES bars_table(bar_id),
	FOREIGN KEY(beer_id) REFERENCES beers_table(beer_id)
	)
SQL

db.execute(create_bars_table_cmd)
db.execute(create_beers_table_cmd)
db.execute(create_beers_bars_table_cmd)





#ADD SOME BEERS
def add_beer(db, name, abv)
  db.execute("INSERT INTO beers_table (name, abv) VALUES (?, ?)", [name, abv])
end

30.times do
	add_beer(db, Faker::Beer.name, Faker::Beer.alcohol)
end

#ADD SOME BARS
def bar(db, name, lat, long)
  db.execute("INSERT INTO beers_table (name, lat, long) VALUES (?, ?, ?)", [name, lat, long])
end

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

puts distance [Faker::Address.latitude.to_f, Faker::Address.longitude.to_f],[Faker::Address.latitude.to_f, Faker::Address.longitude.to_f]