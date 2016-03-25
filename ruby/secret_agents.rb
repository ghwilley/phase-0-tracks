# An encrypt method that advances every letter of a string one letter forward.
​
def encrypt(password)
	index = password.length
	i = 0
	while i < index
		password[i] = password[i].next!
		i = i+1
	end
	puts password
end
​
encrypt("abc")
​
# A decrypt method that reverses the process above.
​
def decrypt(password)
	i = 0
	index = password.length
	while i < index
		x = i - 2
		password[i] = password[x].next!
		i = i+1
	end
	puts password
end
​
decrypt("abc")