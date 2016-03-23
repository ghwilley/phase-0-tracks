# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].

# User stories
# As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.

# As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.

# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.

# As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.

# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.

# As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.

# As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.

# As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.

# 2. Pseudocode






# 3. Initial Solution

class Pizza
  attr_accessor :pizza
  attr_reader :type
  def initialize ()
    pizza_types = ['cheese','pepperoni', 'veggie', 'gluten-free', 'sausage', 'bacon', 'deep-dish', 'giardiniera']
    @pizza = pizza()
    @type = pizza_types.sample
  end
end

class Car < Pizza
 attr_accessor :model, :color, :distance, :number
 def initialize(model, color)
   @model = model
   @color = color
   @speed = 0
   @total_distance = 0
 end
 def distance(distance)
   @distance = distance
   @total_distance += @distance
 end
 def total_distance
   @total_distance
 end
 def speed()
   @speed
 end
 def accelerate(number)
   @speed = number
 end
 def decelerate(number)
   @speed = number
 end
 def navigate(direction)
   @direction = direction
 end
 def current_direction()
   @direction
 end
 def brake()
   @speed = 0
 end

end

class Player < Car
   puts "You're a pizza delivery guy. Do you want to create a new car to start work?"
   puts "y: Yes"
   puts "n: No, exit!"
   puts "-" * 40
   print "Enter your choice: "
   input = gets.chomp.downcase
   case input
     when 'y'
       print "What kind of car? "
       type = gets.chomp
       print "What color: "
       color = gets.chomp
       new_car = Car.new(type, color)
     when 'n'
       exit
   end
   puts "How far will your drive be? "
   drive = gets.chomp
   new_car.distance(drive.to_i)
   new_pizza = Pizza.new
   puts "Okay, you're going to drive #{drive} miles."
   puts "You're going to deliver a #{new_pizza.type} pizza."
 loop do
   puts "-" * 40
   puts "Main Menu"
   puts "-" * 40
   puts "Type 1 to accelerate"
   puts "Type 2 to decelerate"
   puts "Type 3 to display speed"
   puts "Type 4 to change direction"
   puts "Type 5 to brake"
   puts "Type 6 to display direction"
   puts "Type 7 to display total distance"
   puts "Type 8 if pizza was delivered. Start new drive and pick up a new pizza."
   puts "Type 9 to end your drive"
   puts "-" * 40
   print "Enter your choice: "
   pick = gets.chomp

   case pick
     when '1'
       puts "How fast would you like to go? "
       new_speed = gets.chomp.to_i
       new_car.accelerate(new_speed)
       puts "Youve accelerated to #{new_speed}mph"
       sleep(2)
     when '2'
       puts "How slow would you like to go? "
       new_speed = gets.chomp.to_i
       new_car.decelerate(new_speed)
       puts "You've decelerated to #{new_speed}mph"
       sleep(2)
     when '3'
       puts "Your current speed is #{new_car.speed}mph."
       sleep(2)
     when '4'
       puts "What direction would you like to go? "
       new_direction = gets.chomp
       new_car.navigate(new_direction)
       puts "Okay, you're now going: #{new_direction}."
       sleep(2)
     when '5'
       new_car.brake
       puts "Okay, you are stopped because you chose to brake!"
       sleep(2)
     when '6'
       puts "Okay, you're now going: #{new_car.current_direction}."
       sleep(2)
     when '7'
       puts "Your total distance so far is: #{new_car.total_distance} miles."
       sleep(2)
     when'8'
       puts "Great Job! Pizza was delivered. How far is the new drive? "
       new_drive = gets.chomp.to_i
       new_car.distance(new_drive)
       new_pizza_2 = Pizza.new
       puts "Okay, you're new drive is: #{new_drive} miles."
       puts "You're going to deliver a #{new_pizza_2.type} pizza."
       sleep(2)
     when '9'
       puts "Thanks for playing!"
       exit
   end
 end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection
