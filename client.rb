class Client
	attr_accessor :c_name, :c_age, :num_of_children, :pets

	def initialize(c_name, c_age, num_of_children)
		@c_name = c_name
		@c_age = c_age
		@num_of_children = num_of_children
		@pets = {}
	end

	def display_pets
		pets.values.join("\n")
	end

	def adopt_animal
	end

end

#Phase 1 Test (create clients)
Char = Client.new("Char", 29, 0)