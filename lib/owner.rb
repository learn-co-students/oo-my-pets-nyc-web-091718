class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(species)
    @species = species
    @pets = {
      :fishes => [],
      :cats => [],
      :dogs => []
    }
    @name = ""
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

end
