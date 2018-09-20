class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end # end initialize
end # end Dog class
