# create a hash with client's name, age, num of children, decor theme, 
# fav colors, number of windows, if they have a fireplace
user_info = {
	name: "", 
	age: 0, 
	num_kids: 0, 
	decor: "", 
	colors: "", 
	num_windows: 0, 
	fireplace: false
	}

# prompt user for information
puts "What is your name?"
#assign user input to associated datatype
user_info[:name] = gets.chomp

puts "How old are you?"
user_info[:age] = gets.chomp

puts "How many kids do you have?"
user_info[:num_kids] = gets.chomp

puts "What theme do you want for the decor?"
user_info[:decor] = gets.chomp

puts "What are some of your favorite colors?"
user_info[:colors] = gets.chomp

puts "How many windows in the room?"
user_info[:num_windows] = gets.chomp

puts "Do you have a fireplace?(yes/no)"
#conditional to assign boolean to :fireplace
if gets.chomp == "yes"
	user_info[:fireplace] = true
else
	user_info[:fireplace] = false
end

# print users input
puts "
	Name: #{user_info[:name]}
	Age: #{user_info[:age]}
	Kids: #{user_info[:num_kids]}
	Decor: #{user_info[:decor]}
	Colors: #{user_info[:colors]}
	Windows: #{user_info[:num_windows]}
	Fireplace: #{user_info[:fireplace]}
	"
# asks user to correct any wrong information
puts "Is there anything you would like to change? Type \'none\' to skip"
#need user to say what bit they wanna change
change = gets.chomp

puts "what would you like to change that to?"
new_val = gets.chomp
user_info[change.downcase] == new_val
#then whatver input shoulkd swp that symbl after


# give a chance to update incorrect info - none to skip it
puts "
	Name: #{user_info[:name]}
	Age: #{user_info[:age]}
	Kids: #{user_info[:num_kids]}
	Decor: #{user_info[:decor]}
	Colors: #{user_info[:colors]}
	Windows: #{user_info[:num_windows]}
	Fireplace: #{user_info[:fireplace]}
	"