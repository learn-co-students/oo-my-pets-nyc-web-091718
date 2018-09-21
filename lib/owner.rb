class Owner
  @@all = []

  attr_reader :species
  attr_accessor :name, :pets, :fishes, :cats, :dogs

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{self.species}."
  end


  def buy_fish(fishname)
    self.pets[:fishes] << Fish.new(fishname)
  end

  def buy_cat(catname)
    self.pets[:cats] << Cat.new(catname)
  end

  def buy_dog(dogname)
    self.pets[:dogs] << Dog.new(dogname)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each{|pets, array|
      array.each{ |petinstance| petinstance.mood = "nervous" }
    }
    pets.each{|pets, array|
      array.clear}
  end

  def list_pets
    numfish = pets[:fishes].count
    numdog = pets[:dogs].count
    numcats = pets[:cats].count

   "I have #{numfish} fish, #{numdog} dog(s), and #{numcats} cat(s)."

  end


  # code goes here
end
