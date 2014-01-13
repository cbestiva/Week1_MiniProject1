class Animal
	attr_accessor :a_name, :a_age, :a_gender, :a_species, :toys

	def initialize(a_name, a_age, a_gender, a_species)
		@a_name = a_name
		@a_age = a_age
		@a_gender = a_gender
		@a_species = a_species
		#animal can have multiple toys
		@toys = []
	end

end

#Phase 1 Test (create animals)
Mochi = Animal.new("Mochi", 5, "female", "Maltese")
Mochi.toys << "ball"
Mochi.toys << "rope"
# puts Mochi.a_name #=> "Mochi"
# puts Mochi.a_age #=> 5
# puts Mochi.toys #=> "ball" "rope"
# puts Mochi.toys[0] #=> "ball"

Russell = Animal.new("Russell", 3, "male", "Maltese")
