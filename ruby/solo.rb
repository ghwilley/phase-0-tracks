# Morty (like from Rick and Morty's Pocket Morty's, a  Pokemon ripoff)
# ATTRIBUTES : Age, hp, xp_stored, attack, defense
# METHODS: lvl(xp), status(chk hp - green, yellow, red), take_dmg, deliver dmg

class Morty

	attr_reader :attack, :defense, :hp, :age
	attr_accessor :xp, :lvl, :status

def initialize
	@hp = 30
	@xp = 0
	@lxl = 0
	@attack = 15
	@defense = 14
	@age = 5
	@status = ["green", "yellow", "red"]

end

def damage_calc
	dmg = rand(0 - 15)
	@hp -= dmg
	@hp
end

def stat_calc
	if @hp <= 10
		stat_calc = @status[2]
	elsif @hp <= 20
		stat_calc = @status[1]
	else
		stat_calc = @status[0]
	end
end

def attack_cal
end
end

#DRIVER CODE --------------
the_one_true_morty = Morty.new

#Takes damage and calcs hp
p the_one_true_morty.damage_calc
#calculates status
p the_one_true_morty.stat_calc