# animal shelter
# shelter has many pets
# pets various attr: list of favorite toys
# client
# client can have pet from shelter
# needs to record if pet is available or not
# shelter, client, pets are classes
#
# app should:
#  1. list available pets
#  2. adopt pet
#  3. give up pet for future adoptions
#  
# we are a client and want to adopt or return a pet
# hardcode shelter
# hardcode pet objects 
# 

#require "pry"
require_relative "pet"
require_relative "client"

class Shelter
  attr_accessor :name, :location, :pets

  def initialize(name, location)
    @name = name
    @location = location
    @pets = {}
  end
end

spca = Shelter.new("SPCA", "San Francisco")

# spca pets
# attr_accessor :type, :breed, :name, :gender, :age, :toys, :owner
# spca.pets["bogey"] = Pet.new("dog","husky","Bogey","male","8",["rabbit","sled"])
# spca.pets["snoopy"] = Pet.new("dog","beagle","Snoopy","male","3",["typewriter"])
# spca.pets["garfield"] = Pet.new("cat","tabby","Garfield","male","5",["lasagne","bed"])

bogey = Pet.new("dog","husky","Bogey","male","8",["rabbit","sled"])
snoopy = Pet.new("dog","beagle","Snoopy","male","3",["typewriter"])
garfield = Pet.new("cat","tabby","Garfield","male","5",["lasagne","bed"])
grumpy = Pet.new("cat","persian","Grumpy","male","7",["catnip","mice","blogs"])
spca.pets["bogey"] = bogey
spca.pets["grumpy"] = grumpy
spca.pets["garfield"] = garfield
spca.pets["snoopy"] = snoopy

# hash["key"].attr 
# obj.hash["key"].attr

# adopted pets
tigger = Pet.new("cat","tiger","Tigger","female","2",["mouse","scratch post"])

# client adopts tigger
john = Client.new("John")
john.pets << tigger

puts "Thank you for visiting the SPCA today. What would you like to do?"

print "You can choose to (a)dopt a pet  or (r)eturn a pet or (q)uit: "
response = gets.chomp.downcase # chomps get rid of enter key 
puts ""
puts "Please enter your name: "
client_name = gets.chomp.downcase
puts ""

while response != "q"

  if response == "a"
    puts "There are #{spca.pets.length.to_s} pets available to adopt."
    # list available pets

    spca.pets.each {|x, y| puts x }

    #puts spca.pets["bogey"].breed
    spca.pets["bogey"].breed

    
    # ask which pet do you want to adopt
    puts "Which pet would you like to adopt (select from the list)?"
    pet_name = gets.chomp

    # remove this pet from the shelter
    spca.pets.delete(pet_name)

    

    # create client
    client_name = Client.new(client_name)
    client_name.pets << pet_name

    puts "Thank you for adopting a pet from SPCA."

  else response == "r"

    puts "Sorry to hear that you want to return your pet."
    puts "What is your pet's name?"
    pet = gets.chomp
    # update spca to include pet
    # update client.pets array to remove item
    # array.delete(value)

  end
      

print "Choose to (a)dopt a pet  or (r)eturn a pet or (q)uit: "
response = gets.chomp.downcase # chomps get rid of enter key 
end


#binding.pry
