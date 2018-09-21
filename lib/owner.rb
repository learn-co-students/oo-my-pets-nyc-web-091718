require 'pry'

class Owner

  attr_reader :name
  attr_accessor :all_owners, :pets, :count
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
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

   # def self.reset_all
   #
   # end


end
