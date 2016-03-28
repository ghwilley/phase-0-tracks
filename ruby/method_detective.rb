# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => "InVeStIgAtIoN”

p "zom".insert(1 , "o")
# => "zoom”

p "enhance".center(15)
p "enhance".rjust(11, " ").ljust(15, " ")
#=> "    enhance    ”


p "Stop! You're under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!”

p "the usual".concat(" suspects")
#=> "the usual suspects”

p " suspects".prepend("the usual")
#=> "the usual suspects”

p "The case of the disappearing last letter".chomp('r')
p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette”

p "The mystery of the missing first letter".slice(1..38)
# => "he mystery of the missing first letter”

p "Elementary  ,    my   dear      Watson!".squeeze(' ')
# => Elementary, my dear Watson!”

p "z".sum
# => 122 
# (That is where z falls in line of all characters that can be understood
# from what I've found it starts with special characters, then caps, then lowercase)

p "How many times does the letter 'a' appear in this string?".count("a")
#=> 4