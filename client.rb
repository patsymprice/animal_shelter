class Client
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def to_s
    puts "#{@name} has these #{@pets}"
  end
end