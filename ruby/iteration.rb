#Release 1

def sports
  puts "This is a sports string"
  yield("basketball", "football")
end

sports {|sport1, sport2| puts "#{sport1} and #{sport2} are sports"}

hollywood_actors = {
  "Denzel Washington" => "John Q",
  "Tom Hanks" => "Forrest Gump",
  "Leo" => "Jack"
}

movie_genres = ["comedy", "drama", "action", "biopic"]

hollywood_actors.each do |actor, character|
  puts "#{actor} is best known for his character #{character}"
end

p hollywood_actors

p movie_genres

movie_genres.map! do |genre|
  genre.upcase
end

p movie_genres

#Release 2

letter_array = ["a", "b", "c", "d"]

num_hash = {1 => "one", 2=> "two", 3 => "three"}

#method that iterates through items deleting under condition
p num_hash.delete_if {|digit, strng| digit.even?}

#method that filters data structure for items that do satisfy condition
p letter_array.keep_if {|letter| letter =="b" }

#method that does the same as line 37
p num_hash.select {|digit, strng| digit > 1}

p num_hash.reject {|digit, strng| digit > 1}

# method that removes until condition is false and then stops
p letter_array.take_while {|letter| letter != "c"}