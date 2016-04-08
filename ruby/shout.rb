# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!" + " ^_^"
# 	end
# end


# #DRIVER CODE ------------


# p Shout.yelling_happily("Hallo")

# p Shout.yell_angrily("BARF")

module Shout
	def yell_angrily(words)
		p words + "!!!" + " :((("
	end

	def yell_happily(words)
		p words + "!" + "^_^"
	end
end

class TearsForFears
	include Shout
end

class IsleyBrothers
	include Shout
end

#DRIVER CODE -----------

tff = TearsForFears.new
tff.yell_angrily("SHOUT")

ibros = IsleyBrothers.new
ibros.yell_happily("WAEEE")