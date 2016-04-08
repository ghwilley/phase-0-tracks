# Morty (like from Rick and Morty's Pocket Morty's, a  Pokemon ripoff)
# ATTRIBUTES : Age, hp, xp_stored, attack, defense
# METHODS: lvl(xp), status(chk hp - green, yellow, red), take_dmg, deliver dmg

class Morty

	attr_reader :attack, :defense, :hp
	attr_accessor :xp, :lvl, :status

def initialize
	@hp = 40
	@xp = 0
	@lvl = 0.0
	@attack = 15
	@defense = 11
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

# #Takes damage and calcs hp
# p the_one_true_morty.damage_calc
# #calculates status
# p the_one_true_morty.stat_calc

# #calculates damage given and xp revieved
# p the_one_true_morty.attack_cal

# #calculates current level
# p the_one_true_morty.lvl_calc

# the_one_true_morty.mantra("OUCH")
morty_hold = []
puts "Hello."
puts "How many Mortys would you like to generate?"
quantity = gets.chomp.to_i

quantity.times do |x|
	current_morty = []
	puts "How much health for this morty?"
	hp = gets.chomp
	current_morty.push(hp)

	puts "How much defense?"
	defense = gets.chomp
	current_morty.push(defense)

	puts "How much attack?"
	attack = gets.chomp
	current_morty.push(attack)

	#double check, then merge all as one array item
	puts "Is #{current_morty[0]} health correct? yes/no"
	answer = gets.chomp
	if answer == "no"
		puts "what would you like to change it to?"
		hp = gets.chomp
		current_morty[0] = hp.to_i
	end

	puts "Is #{current_morty[1]} defense correct? yes/no"
	answer = gets.chomp
	if answer == "no"
		puts "what would you like to change it to?"
		defense = gets.chomp
		current_morty[1] = defense.to_i
	end

	puts "Is #{current_morty[2]} attack correct? yes/no"
	answer = gets.chomp
	if answer == "no"
		puts "what would you like to change it to?"
		attack = gets.chomp
		current_morty[2] = attack.to_i
	end
	#add each morty to the hold then spit back their stats
	morty_hold.push("#{current_morty[0]} #{current_morty[1]} #{current_morty[2]}")
end

p morty_hold

	#BARF IT OUT
	# morty_hold.each do |x|
	# 	detail = morty_hold[x].split(' ')
	# 	puts "Morty values: HP: #{detail[0]} Defense: #{detail[1]} Attack: #{detail[2]}"
	# end