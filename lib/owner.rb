require 'pry'

class Owner
  # code goes here

  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @species = "human"
    @name
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
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
    self.pets.each {|pet_species, pets|
      # binding.pry
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    }

    # binding.pry
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
