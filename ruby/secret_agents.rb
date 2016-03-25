# An encrypt method that advances every letter of a string one letter forward.
def encrypt(password)
	index = password.length
	i = 0
	while i < index
		password[i] = password[i].next!
		i = i+1
	end
	puts password
end

encrypt("arg")

# A decrypt method that reverses the process above.


def decrypt(password)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	index = password.length
	while i < index
		#whatever that letter is = 
		password[i] = alpha[i]

		i = i+1
	end
	puts password
end

decrypt("bsh")
