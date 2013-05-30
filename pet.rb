class Pet
  attr_accessor :type :breed :name :gender :age :owner

  def initialize(type, breed, name, gender, age, owner)
    @type = type
    @breed = breed
    @name = name
    @gender = gender
    @age = age
    @owner = "shelter"
  end
end