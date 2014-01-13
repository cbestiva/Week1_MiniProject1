class Shelter
	# shelter should display all the clients
	# shelter should display all the animals
	
	attr_accessor :name, :animals, :clients

	def initialize(name)
		@name = name
		@animals = {}
		@clients = {}
	end
	
	def display_animals
		@animals.values
	end

	def display_clients
		@clients.values
	end

end

#Phase 2 (animals and clients can be added to shelter)
shelter = Shelter.new("shelter")
#HappiTails will have a hash of animals and clients
puts shelter.animals[:Mochi] = ["Mochi", 5, "female", "dog"]