#METHOD DECLARATIONS

# An encrypt method that advances every letter of a string one letter forward.
def encrypt(password)
  #needs to be a string when being nested in another method
	index = password.to_s.length
	i = 0
	while i < index
    #conditional for edge cases
		if password[i] == "z"
			password[i] = "a"
    elsif password[i] == " "
      password[i] = " "
		else
			password[i] = password[i].next!
		end
		i += 1
	end
<<<<<<< HEAD
	return password
=======
	p password
>>>>>>> 0c7a712b88e73bdee1929aa9db36019c3903c448
end


# A decrypt method that reverses the process above.
def decrypt(password)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	alpha_num = 0
	letter = ""
  #fixes caps input
  password = password.to_s.downcase
	i = 0
<<<<<<< HEAD
	password = password.downcase
	index = password.to_s.length
	while i < index
		letter = password[i]
		alpha_num = alpha.index.to_s(letter) - 1
		password[i] = alpha[alpha_num]
		i += 1
	end
	return password
end

decrypt("The duck flies at midnight")



# # An decrypt method that reverses the process above.

# def decrypt(password)
# 	alpha = "abcdefghijklmnopqrstuvwxyz"
# 	alpha_num = 0
# 	letter = "a"
# 	i = 0
# 	password = password.downcase
# 	length = password.length
# 	while i < length
# 		letter = password[i]
# 		alpha_num = alpha.index(letter) - 1
# 		print alpha[alpha_num]
# 		i += 1
# 	end
# 	puts ""
# end

decrypt(encrypt("The duck flies at midnight"))

# puts "Encrypt or decrypt?"
# answer = gets.chomp

# if answer == "encrypt"
#   puts "Enter a word to encrypt:"
#   word = gets.chomp
#   encrypt(word)

# elsif answer == "decrypt"
#   puts "Enter a word to decrypt:"
#   word = gets.chomp
#   decrypt(word)

# else puts "Please try again!"
  
# end
=======
  #needs to be a string when being nested in another method
	index = password.to_s.length
	while i < index
		letter = password[i]
    #conditional for edge classes...
    if password[i] == " "
      password[i] = " "
    else
      #needs to be a integer when being nested in another method
  		alpha_num = alpha.index(letter).to_i - 1
  		password[i] = alpha[alpha_num]
    end
		i += 1
	end
	p password
end

#decrypt(encrypt("The duck flies at midnight"))
#This works because we  output into a string, and the methods converts user input to a string.

#DRIVER CODE

#Asks user if they want to encrypt of decrypt a string
puts "Encrypt or decrypt?"
answer = gets.chomp

#Asks user for string to be encrypted, then runs encrypt method
if answer == "encrypt"
  puts "Enter a word to encrypt:"
  word = gets.chomp
  encrypt(word)

#Asks user for string to be decrypted, then runs decrypt method
elsif answer == "decrypt"
  puts "Enter a word to decrypt:"
  word = gets.chomp
  decrypt(word)
#Alerts if user fails to enter proper command
else puts "Please try again!"
  
end
>>>>>>> 0c7a712b88e73bdee1929aa9db36019c3903c448
