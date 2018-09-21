require 'pry'

class Owner

  attr_reader :species
  attr_accessor :pets, :count, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

   def self.count
     @@all.length
   end

   def self.reset_all
     if self.count > 0
       @@all = []
     end
   end

   def say_species
      "I am a #{@species}."
   end

    def buy_fish(fish_name)
      fish = Fish.new(fish_name)
      @pets[:fishes] << fish
    end

    def buy_cat(cat_name)
      cat = Cat.new(cat_name)
      @pets[:cats] << cat
    end

    def buy_dog(dog_name)
      dog = Dog.new(dog_name)
      @pets[:dogs] << dog
    end

    def walk_dogs
      @pets[:dogs] = @pets[:dogs].collect do |dog|
        dog.mood="happy"
      end
    end

    def play_with_cats
      @pets[:cats] = @pets[:cats].collect do |cat|
        cat.mood="happy"
      end
    end

    def feed_fish
      @pets[:fishes] = @pets[:fishes].collect do |fish|
        fish.mood="happy"
      end
    end

    def sell_pets
      @pets = @pets.collect do |animal_species_symbol, array_of_animal_species|
        array_of_animal_species.each do |pet|
          pet.mood = "nervous"
        end
      end
      @pets = {fishes: [], cats: [], dogs: []}
    end


    def list_pets
      "I have #{@pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
    end
#{}"I have 2 fish, 3 dog(s), and 1 cat(s)."
end
# sell_pets
#       can sell all its pets, which make them nervous (FAILED - 10)
