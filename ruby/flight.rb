#MODULES --------------
module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reachine #{altitude} ..."
	end
end


#CLASSES ------------
class Bird
	include Flight
end

class Plane
	include Flight
end

#DRIVER ----------

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)