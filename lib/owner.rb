class Owner

  attr_reader :name
  attr_accessor :owners
  @@owners = []

  def initialize(name)
    @name = name
    @@owners << self
  end

  def count_owners
    @@owners.length
  end
  # code goes here
end
