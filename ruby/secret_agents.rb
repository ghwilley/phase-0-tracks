# An encrypt method that advances every letter of a string one letter forward.
def encrypt(password)
	index = password.length
	i = 0
	while i < index
		if password[i] == "z"
			password[i] = "a"
		else
			password[i] = password[i].next!
		end
		i += 1
	end
	return password
end


# A decrypt method that reverses the process above.
def decrypt(password)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	alpha_num = 0
	letter = "a"
	i = 0
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