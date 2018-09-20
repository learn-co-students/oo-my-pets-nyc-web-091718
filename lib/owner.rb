require 'pry'

class Owner

  @@all = []
  attr_accessor :name, :pets
  attr_reader :species


### Instance Methods
  def initialize(species)
    @species = species
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end

    self.pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end

    self.pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    self.pets.clear
  end

  def list_pets
    "I have #{(self.pets[:fishes].count)} fish, #{(self.pets[:dogs].count)} dog(s), and #{(self.pets[:cats].count)} cat(s)."
  end


### Class Methods
  def self.all
      @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

end #End of Owner Class


# Class methods

#     can count how many owners have been created (FAILED - 2)
#     can reset the owners that have been created (FAILED - 3)
#     can initialize an owner
#   instance methods
#     #species
#       initializes with a species (FAILED - 4)
#       can't change its species
#     #say_species
#       can say its species (FAILED - 5)
#     #name
#       can have a name
#     #pets
#       is initialized with a pets attribute as a hash with 3 keys (FAILED - 6)
#     #buy_fish
#       can buy a fish that is an instance of the Fish class (FAILED - 7)
#       knows about its fishes (FAILED - 8)
#     #buy_cat
#       can buy a cat that is an instance of the Cat class (FAILED - 9)
#       knows about its cats (FAILED - 10)
#     #buy_dog
#       can buy a dog that is an instance of the Dog class (FAILED - 11)
#       knows about its dogs (FAILED - 12)
#     #walk_dogs
#       walks the dogs which makes the dogs' moods happy (FAILED - 13)
#     #play_with_cats
#       plays with the cats which makes the cats moods happy (FAILED - 14)
#     #feed_fish
#       feeds the fishes which makes the fishes' moods happy (FAILED - 15)
#     #sell_pets
#       can sell all its pets, which make them nervous (FAILED - 16)
#     #list_pets
#       can list off its pets (FAILED - 17)
