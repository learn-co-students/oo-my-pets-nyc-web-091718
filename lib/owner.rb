require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  # Class methods
  def self.all
    @@all
  end # end self.all

  def self.count
    self.all.count
  end # end self.count

  def self.reset_all
    self.all.clear
  end # end self.reset_all

  # instance methods
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    self.class.all << self
  end # end initialize

  def say_species
    "I am a #{self.species}."
  end # end say_species

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    self.pets[:fishes] << new_fish
  end # end buy_fish

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    self.pets[:cats] << new_cat
  end # end buy_cat

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    self.pets[:dogs] << new_dog
  end # end buy_dog

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end # end walk_dogs

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end # end play_with_cats

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end # end feed_fish

  def sell_pets
    self.pets[:dogs].each {|dog| dog.mood = "nervous"}
    self.pets[:cats].each {|cat| cat.mood = "nervous"}
    self.pets[:fishes].each {|fish| fish.mood = "nervous"}
    self.pets.each {|pet_type, pet_array| pet_array.clear}
  end # end sell_pets

  def list_pets
    fish_count = self.pets[:fishes].count
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end # end list_pets

end # end Owner class
