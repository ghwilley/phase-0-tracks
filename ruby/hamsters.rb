puts ("What is your hamsters name?")
ham_name = gets.chomp
puts ("How loud is your hamster on a scale of 1 to 10?")
loudness = gets.chomp.to_i
puts ("What is the fur color?")
color = gets.chomp
puts ("Good for adoption? Y or N")
adopt = gets.chomp

puts ("How old is the hamster?")
age = gets.chomp.to_i

# makes blank input equal nil
# if age.empty?
#   age = nil
# end 


puts ("Hamster Data:")
puts ("Hamster Name: #{ham_name}")
puts ("Hamster Volume Level: #{loudness}")
puts ("Hamster Fur Color: #{color}")
puts ("Hamster Adoptable: #{adopt}")
puts ("Hamster Age: #{age}")