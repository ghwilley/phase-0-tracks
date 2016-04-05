class Puppy

  def initilaize
  puts "Initializing new puppy instance.."
  end

  def fetch(toy)
  puts "I brought back the #{toy}!"
  toy
  end

  def speak(x)
  x.times { |bark| puts "Woof!" }
  end

  def roll_over
  puts "*rolls over*"
  end

  def lay_down
  puts "*lays down*"
  end

  def dog_years(x)
  years = 0
  idx = x
  x.times do |a|
  if idx > 2
  years += 4
  idx -= 1
  elsif idx <= 2
  years += 12
  idx -= 1
  end
  end
  p years
  end

end


class Soccer
  def initialize
  puts "Initializing soccer class"
  end

  def best_team(team)
  puts "#{team} is the best team"
  end
   
  def best_player(player) 
  puts "#{player}"
  end
   
end


#DRIVER COVER

puppy = Puppy.new

puppy.fetch("ball")

puppy.speak(3)

puppy.dog_years(7)

puppy.lay_down

puppy.roll_over


#DRIVE CODE FOR THE SOCCER CLASS
array = []
x = 0
while x < 50
  soccer = Soccer.new
  array.push(soccer)
  x += 1
end

array.each do |x|
  x.best_player("Messi")
end
