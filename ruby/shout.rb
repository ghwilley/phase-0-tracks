module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!" + " ^_^"
	end
end


#DRIVER CODE ------------


p Shout.yelling_happily("Hallo")

p Shout.yell_angrily("BARF")