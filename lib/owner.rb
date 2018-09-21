require 'pry'

class Owner

  attr_reader :species

  attr_accessor :pets, :name

  @@all = []
  @@count = 0

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end


  def self.all
     @@all
  end

  def self.count
    @@count = self.all.length
  end

  def self.reset_all
    self.all.clear

  end

  def species
    @species

  end

  def say_species
    return "I am a #{@species}."

  end

  def buy_fish(my_fish_name)
    self.pets[:fishes] << Fish.new(my_fish_name)
  end

  def buy_dog(my_dog_name)
    self.pets[:dogs] << Dog.new(my_dog_name)
  end

  def buy_cat(my_cat_name)
    self.pets[:cats] << Cat.new(my_cat_name)
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
  pets.each do |pet, instance|
    instance.each do |feeling|
      feeling.mood = "nervous"
    end
  end
  pets.each do |pet, instance|
    instance.clear
  end
end

def list_pets
   fishint = pets[:fishes].count
   dogint = pets[:dogs].count
   catsint = pets[:cats].count

  "I have #{fishint} fish, #{dogint} dog(s), and #{catsint} cat(s)."

 end



end
