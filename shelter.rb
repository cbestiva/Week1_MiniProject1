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
		@animals.each {|key, value|}
		# @animals.values
	end

	def display_clients
		@clients.each {|key, value|}
		# @clients.values
	end

end

#Phase 2 (animals and clients can be added to shelter)
shelter = Shelter.new("shelter")
#HappiTails will have a hash of animals and clients
shelter.animals[:Mochi] = ["Mochi", 5, "female", "dog"]
# puts shelter.animals.keys
# puts shelter.animals.values
# puts shelter.display_animals #=> {:Mochi=>["Mochi", 5, "female", "dog"]}