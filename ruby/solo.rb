# Morty
# ATTRIBUTES : Age, hp, xp_stored, attack, defense, weight, height
# METHODS: lvl(xp), status(chk hp - green, yellow, red), take_dmg, deliver dmg

class Morty

	attr_reader :attack, :defense, :weight, :height, :age
	attr_accessor :xp, :lvl. :status

def initialize
	@xp = 0
	@lxl = 0
	@attack = 15
	@defense = 14
	@weight = 40
	@height = 55
	@age = 5
	
end

stats = ["green", "yellow", "red"]

@status = stats[0]