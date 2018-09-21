class Owner
  attr_accessor :mood, :pets, :name
  attr_reader :species

  OWNERS = []
  @pets = {}

  def initialize(name = "nil")
    @name = name
    @species = "human"
    @pets = {:dogs => [], :cats => [], :fishes => []}
    OWNERS << self
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.length
  end
  
  def self.reset_all
    OWNERS.clear
  end


  def say_species
    "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def change_mood(animal_key, new_mood)
    @pets[animal_key].map do |pet|
      pet.mood = new_mood
    end
  end

  def walk_dogs
    # @pets[:dogs].map do |dog|
    #   dog.mood = "happy"
    # end
    change_mood(:dogs, "happy")
  end

  def feed_fish
    change_mood(:fishes, "happy")
  end

  def play_with_cats
    change_mood(:cats, "happy")
  end

  def list_pets
    dcount = @pets[:dogs].length
    fcount = @pets[:fishes].length
    ccount = @pets[:cats].length

    "I have #{fcount} fish, #{dcount} dog(s), and #{ccount} cat(s)."
  end

  def sell_pets
    change_mood(:dogs, "nervous")
    change_mood(:cats, "nervous")
    change_mood(:fishes, "nervous")
    @pets.clear
  end

end


#   #name
#     can have a name (FAILED - 6)
#   #pets
#     is initialized with a pets attribute as a hash with 3 keys (FAILED - 7)
#   #buy_fish
#     can buy a fish that is an instance of the Fish class (FAILED - 8)
#     knows about its fishes (FAILED - 9)
#   #buy_cat
#     can buy a cat that is an instance of the Cat class (FAILED - 10)
#     knows about its cats (FAILED - 11)
#   #buy_dog
#     can buy a dog that is an instance of the Dog class (FAILED - 12)
#     knows about its dogs (FAILED - 13)
#   #walk_dogs
#     walks the dogs which makes the dogs' moods happy (FAILED - 14)
#   #play_with_cats
#     plays with the cats which makes the cats moods happy (FAILED - 15)
#   #feed_fish
#     feeds the fishes which makes the fishes' moods happy (FAILED - 16)
#   #sell_pets
#     can sell all its pets, which make them nervous (FAILED - 17)
#   #list_pets
#     can list off its pets (FAILED - 18)
