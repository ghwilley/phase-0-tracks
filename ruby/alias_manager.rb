#Take string into method, swap first and last name
#break string into words and swap index
def alias_swap(spy_name)
  spy_name = spy_name.split(' ')
  spy_name = spy_name.reverse!
    #PUT BACK INTO STRING
  spy_name.join(' ')
  spy_name
end

#Change all the vowels to the next in alphabet
#probably need .each or .map
def alias_shift(spy_name)
  #break apart string into letters
  vowels = ["a", "e", "i", "o", "u"]
  conso_str = "bcdfghjklmnpqrstvwxyz"
  vow_str = vowels.join('')
  spy_name = spy_name.split('')
  #need to compare array of spy_name to vowels 
  #then assign 1 higher index
  #take each letter in spy_name and see if it's in vowel

  reps = spy_name.length
  reps.times do |i|
    if vowels.include?(spy_name[i]) == true
      spy_name[i] = vow_str[vow_str.index(spy_name[i]) + 1]
    else
      #Change all consonants to next in alphabet
      if conso_str.index(spy_name[i].downcase) != nil
        spy_name[i] = conso_str[conso_str.index(spy_name[i].downcase) + 1]
      else
        puts " "
      end
    end
  end
  spy_name.join('')
end





  name_array = []
  def name_stor

      name = nil
      puts "Please enter names to be encoded. Type \'done\' to exit."
      while name != 'done'
        name = gets.chomp
        false_name = alias_swap(alias_shift(name)).join(' ')
        puts false_name
        yield(name, false_name)
      end
    
  end

  name_stor { |name1, name2| 
    name_array.push("Agent #{name2} is actually #{name1}")
  }

  
p name_array