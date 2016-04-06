class Santa
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
		"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0

  def speak
    puts "Ho, ho, ho! Haaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def initialize(gender, ethnicity)
  	@gender = gender
  	@ethnicity = ethnicity
    puts "Initializing Santa instance..."
  end

end

# st_nick = Santa.new

# st_nick.speak

# st_nick.eat_milk_and_cookies("oatmeal")

santas = []
santa_ethnic = ["Cambodian", "Lithuanian", "Dutch", "Danish"]
santa_gender = ["male", "female", "dutch", "female"]

santa_gender.length.times do |i|
	santas << Santa.new(santa_gender[i], santa_ethnic[i])
end


p santas