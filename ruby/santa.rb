class Santa

  def speak
    puts "Ho, ho, ho! Haaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def initialize(gender, ethnicity)
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
    "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  	@gender = gender
  	@ethnicity = ethnicity
    puts "Initializing Santa instance..."
  end



  #GETTER METHODS ---------
  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end

  def age
    @age
  end

  def reindeer_ranking
    @reindeer_ranking
  end


  #SETTER METHODS ------------

   def celebrate_birthday
     @age += 1
   end

   def get_mad_at(reindeer)
     @reindeer_ranking.delete("#{reindeer}")
     @reindeer_ranking.push("#{reindeer}")
   end


end


#DRIVER CODE -----------------------

 st_nick = Santa.new("male", "white")

# st_nick.speak

# st_nick.eat_milk_and_cookies("oatmeal")

# santas = []
# santa_ethnic = ["Cambodian", "Lithuanian", "Dutch", "Danish"]
# santa_gender = ["male", "female", "dutch", "female"]

# santa_gender.length.times do |i|
# 	santas << Santa.new(santa_gender[i], santa_ethnic[i])
# end
st_nick.celebrate_birthday

p st_nick.age

st_nick.get_mad_at("Rudolph")

p st_nick.reindeer_ranking
