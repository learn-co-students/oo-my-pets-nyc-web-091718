require 'pry'

class Owner
  attr_reader  :species
  attr_accessor :pets, :name

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

#binding.pry

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def buy_fish(name)
    new = Fish.new(name)
    self.pets[:fishes]<<new
    #binding.pry
  end

  def buy_cat(name)
    new = Cat.new(name)
    self.pets[:cats]<<new
  end

  def buy_dog(name)
    new = Dog.new(name)
    self.pets[:dogs]<<new
  end

  def say_species
    "I am a #{@species}."
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
    self.pets.each do |key, array|
      array.each do |element|
        element.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end


end
