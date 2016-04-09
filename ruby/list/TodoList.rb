class TodoList
	attr_accessor :array
	def initialize(x)
		@array = x
	end

	def get_items
		@array
	end

	def add_item(x)
		@array.push(x)
	end

	def delete_item(x)
		@array.delete(x)
	end

	def get_item(x)
		@array[x]
	end




end

list = TodoList.new(["do the dishes", "mow the lawn"])

list.get_item(0)