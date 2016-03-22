
puts 'What is your name?'
name = gets.chomp

puts 'How old are you?'
age = gets.chomp

puts 'What year were you born?'
birth_year = gets.chomp

puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
garlic = gets.chomp

puts 'Would you like to enroll in the company\'s health insurance?'
insurance = gets.chomp


#Determines if they lied on their age
year = Time.now.year
age_true = true
if year.to_i - birth_year.to_i == age.to_i
  age_true = true
else 
  age_true = false
end

#determines if they want insurance
if insurance == 'yes'
  insurance = true
else
  insurance = false
end

#determine garlic true or false
if garlic == 'yes'
  garlic = true
else
  garlic = false
end


#determine vamp
if name == 'Drake Cula'|| name == 'Tu Fang'
   puts 'Definitely a vampire.'

elsif age_true && (garlic || insurance)
  puts 'Probably not a vampire.'

elsif !age_true && (!garlic || !insurance)
  puts 'Probably a vampire.'

elsif !age_true && !garlic && insurance
  puts 'Almost certainly a vampire.'
else
  puts 'Results inconclusive.'
end
