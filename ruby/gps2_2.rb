# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # declare an empty hash
  # break apart given string
  # add each item to the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
  # p the hash
# output: [what data type goes here, array or hash?]



def shopping_list(user_input)
  
  grocery_list = {}
 
  list = user_input.split(" ")
  
  list.each do |item|
    grocery_list[item] = 1
  end
  
  p grocery_list

end


# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # get string
  # get quantity
  # add string to hash
# output:
  # output updated hash
  
def add_item(grocery_list, new_item, new_quant)
    grocery_list[new_item] = new_quant
    p grocery_list
end
  



# Method to remove an item from the list
# input: whatever item to be removed
# steps:
  # delete the item and quantity
# output:
  # updated hash

def remove_item(grocery_list, rem_item)
  grocery_list.delete(rem_item)
  p grocery_list
end


# Method to update the quantity of an item
# input: item to updated, and new quantity
# steps:
  # select the item in the hash and assign new value
# output:
  # updated hash
def new_quantity(grocery_list, item, new_quan)
  grocery_list[item] = new_quan
  p grocery_list
end


# Method to print a list and make it look pretty
# input: existing hash
# steps:
  # print a string containing eash item in hash
# output:
  # Pretty list

def print_list(grocery_list)
  puts "Here is your grocery list: "
  puts grocery_list.each { |x, y| puts "#{x}: #{y}" }
  puts "Have a wonderful shopping day!"
end

#DRIVER CODE ------

today_list = nil

today_list = shopping_list("eggs bread cheese")

today_list = add_item(today_list, "Lemonade", 2 )

today_list = add_item(today_list, "Tomatoes", 3 )

today_list = add_item(today_list, "Onions", 1 )

today_list = add_item(today_list, "Ice Cream", 4 )

today_list = remove_item(today_list, "Lemonade")

today_list = new_quantity(today_list, "Ice Cream", 1)

today_list = print_list(today_list)