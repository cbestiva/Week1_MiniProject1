require './animal'
require './client'
require './shelter'

shelter = Shelter.new("HappiTails")

def menu message
	puts `clear`
	puts "#{message}\n\n" unless message.empty?

	puts "1 : Create an animal"
	puts "2 : Create a client"
	puts "3 : Display all animals"
	puts "4 : Display all clients"
	puts "5 : Client adopts an animal"
	puts "6 : Client puts animal up for adoption"
	puts "q : Quit\n\n"
	print "--> "
	gets.chomp
	end

	message = ""
	choice = menu message
	while choice != 'q'
	message = ""
	case choice
	when "1"
		#Phase 3 Test (user creates animal)
		puts "Enter animal info:"
		print "Animal's Name: "; a_name = gets.chomp.downcase
		print "Animal's Age: "; a_age = gets.chomp
		print "Animal's Gender: "; a_gender = gets.chomp.downcase
		print "Animal's Species: "; a_species = gets.chomp.downcase
		print "Animal's Toys: "; toys = gets.chomp.split

		shelter.animals[a_name] = Animal.new(a_name, a_age, a_gender, a_species)
		shelter.animals[a_name].toys = toys
		message += "Added animal #{a_name}."
	when "2"
		#Phase 3 Test (user creates client)
		puts "Enter client info:"
		print "client's name: "; c_name = gets.chomp.downcase
		print "clinent's age: "; c_age = gets.chomp
		print "number of children: "; num_of_children = gets.chomp
		print "pets: "; pets = gets.chomp

		shelter.clients[c_name] = Client.new(c_name, c_age, num_of_children)
		message += "Added client #{c_name}."
	when "3"
		message += "Animal list: "
		message += "\n#{shelter.display_animals}"
	when "4"
		message += "Client list: "
		message += "\n#{shelter.display_clients}"
	when "5"
		puts "#{shelter.display_animals}"
		print "\nWhich animal do you want to adopt? "; animal = gets.chomp
		puts "\n#{shelter.display_clients}"
		puts "\nWhat is your name? "; client = gets.chomp

		shelter.clients[client].pets[animal] = shelter.animals[animal]
		shelter.animals.delete(animal)
		message += "#{client} has adopted #{animal}."
	when "6"
		puts "#{shelter.display_clients}"
		print "\nWhat is your name? "; client = gets.chomp
		
		puts "\n#{shelter.clients[client].display_pets}"
		print "\nWhich animal do you want to return? "; animal = gets.chomp

		shelter.animals[animal] = shelter.clients[client].pets[animal]
		shelter.clients[client].pets.delete(animal)
		message += "#{client} has put #{animal} up for adoption."
	end
	choice = menu message

end
