class Pet
  attr_accessor :type, :breed, :name, :gender, :age, :toys, :owner

  def initialize(type, breed, name, gender, age, toys)
    @type = type
    @breed = breed
    @name = name
    @gender = gender
    @age = age   
    @toys = toys
  end

  # def to_s
  #   puts "#{@name} is a #{@gender} #{@breed} #{@type} who is #{@age} y.o. who likes #{@toys}"
  # end
end