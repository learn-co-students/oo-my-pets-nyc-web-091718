require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  # Returns an array containing all Owner instances
  def self.all
    @@all
  end

  # Returns the number of the Owners that have been created
  def self.count
    @@count = @@all.length
  end

  # Deletes all instances of Owner objects
  def self.reset_all
    self.all.clear
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
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
    self.pets.each do |species, array|
      array.each do |pet|
        pet.mood = "nervous"
      end
      array.clear
    end
  end

  def list_pets
    number_of_fish = self.pets[:fishes].length
    number_of_dogs = self.pets[:dogs].length
    number_of_cats = self.pets[:cats].length
    "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end

end
