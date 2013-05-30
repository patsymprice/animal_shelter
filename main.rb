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

require "pry"
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
spca.pets["bogey"] = Pet.new("dog","husky","Bogey","male","8",["rabbit","sled"])
spca.pets["snoopy"] = Pet.new("dog","beagle","Snoopy","male","3",["typewriter"])
spca.pets["garfield"] = Pet.new("cat","tabby","Garfield","male","5",["lasagne","bed"])


# adopted pets
tigger = Pet.new("cat","tiger","Tigger","female","2",["mouse","scratch post"])

# client adopts tigger
john = Client.new("John")
john.pets << tigger


binding.pry


print "Choose to (a)dopt a pet  or (r)eturn a pet or (q)uit: "
response = gets.chomp.downcase # chomps get rid of enter key 
print "Please enter your name"
client_name = gets_chomp.downcase

while response != "q"




  if response == "a"
      spca.pets
    # list all available pets
    # ask which pet do you want to adopt
    # set pet.owner = client_name
    # create Client.new(client_name, pet)
    puts "Thank you for adopting #{@pet}"

  else response == "r"

    # update pet object owner = spca
    # update client.pets array to remove item
    # array.delete(value)

  end
      

print "Choose to (a)dopt a pet  or (r)eturn a pet or (q)uit: "
response = gets.chomp.downcase # chomps get rid of enter key 
end
