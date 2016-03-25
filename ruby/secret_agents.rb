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
	puts password
end

encrypt("zed")

# A decrypt method that reverses the process above.


def decrypt(password)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	alpha_num = 0
	letter = "a"
	i = 0
	index = password.length
	while i < index
		letter = password[i]
		alpha_num = alpha.index(letter) - 1
		password[i] = alpha[alpha_num]
		i += 1
	end
	puts password

end

decrypt("afe")