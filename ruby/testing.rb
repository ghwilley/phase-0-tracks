<<<<<<< HEAD
currentYear = Time.new.year
results = nil

puts "How many employees are being processed?"
employeeAmt = gets.chomp.to_i

employeeAmt.times {|i|
  allergy = ""

  puts "What is your name?" 
  name =  gets.chomp
  
  puts "How old are you?"   
  age = gets.chomp.to_i
  
  puts "What year were you born?"
  birthYear = gets.chomp.to_i
  
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  breadAnswer = gets.chomp
  
  puts "Would you like to enroll in the company’s health insurance? (yes/no)"
  healthInsurance = gets.chomp


  until allergy == "done" do
    puts "Please enter any allergies you have one at a time, type 'done' when complete"
    allergy = gets.chomp

    if allergy.downcase == "sunshine"
      sunshine_allergy = true
      break
    end
  end

  # Vampire detection logic
  if (age == (currentYear - birthYear)) && (breadAnswer.downcase == 'yes' || healthInsurance.downcase == 'yes')
    if sunshine_allergy
      results = "Probably a vampire."
    else
      results = "Probably not a vampire."
    end
  elsif (age != (currentYear - birthYear)) && (breadAnswer.downcase == 'no' || healthInsurance.downcase == 'no')
    if (age != (currentYear - birthYear)) && breadAnswer.downcase == 'no' && healthInsurance.downcase == 'no'
      results = "Almost certainly a vampire."
    else
      results = "Probably a vampire."
    end
  else
    if sunshine_allergy
      results = "Probably a vampire." 
    else    
      results = "Results inconclusive."
    end
  end
  # if he/she is a good liar
  if (name.downcase == "drake cula") || (name.downcase == "tu fang")
    results = "Definitely a vampire."
  end
  
  puts "Employee Name: #{name} - Status: #{results}"
}

puts "Actually never mind! What do these questions have to do with anything? Let's all be friends."

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
=======
def method1
  puts 1 + 1
  def method2
    puts 2+1
  end
end

method1
>>>>>>> 0c7a712b88e73bdee1929aa9db36019c3903c448
