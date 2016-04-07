# Morty (like from Rick and Morty's Pocket Morty's, a  Pokemon ripoff)
# ATTRIBUTES : Age, hp, xp_stored, attack, defense
# METHODS: lvl(xp), status(chk hp - green, yellow, red), take_dmg, deliver dmg

class Morty

	attr_reader :attack, :defense, :hp, :age
	attr_accessor :xp, :lvl, :status

def initialize
	@hp = 30
	@xp = 0
	@lvl = 0.0
	@attack = 15
	@defense = 14
	@age = 5
	@status = ["green", "yellow", "red"]

end

def mantra(word)
	mantra = word.upcase
	3.times {|x| puts "#{word}"}
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
	dmg = rand(0 - 10)
	@xp += dmg
	@xp
end

def lvl_calc
	if @xp >= 7
		@lvl += 1.0
	elsif @xp <= 7
		@lvl += 0.3
	else
		@lvl += 0.1
	end
end
			


end

#DRIVER CODE --------------
the_one_true_morty = Morty.new

#Takes damage and calcs hp
p the_one_true_morty.damage_calc
#calculates status
p the_one_true_morty.stat_calc

#calculates damage given and xp revieved
p the_one_true_morty.attack_cal

#calculates current level
p the_one_true_morty.lvl_calc

the_one_true_morty.mantra("OUCH")