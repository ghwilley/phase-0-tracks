#require gems
require 'sqlite3'
require 'faker'

# create sqlite3 database
db = SQLite3::Database.new("barhopping.db")
# db includes bars, long/lat of bar, beers on tap
# second table is of beers - name and abv



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