require 'pry'
require_relative './cat.rb'
require_relative './dog.rb'
require_relative './fish.rb'
require_relative './owner.rb'


# c1 = Cat.new("a")
# c2 = Cat.new("b")
# c3 = Cat.new("c")
#
# d1 = Dog.new("d")
# d2 = Dog.new("e")
# d3 = Dog.new("f")
#
# f1 = Fish.new("g")
# f2 = Fish.new("h")
# f3 = Fish.new("i")

o1 = Owner.new("a")
o1.buy_dog("a")
o1.buy_dog("b")
o1.buy_cat("c")
o1.buy_cat("d")
o1.buy_fish("e")
o1.buy_fish("f")

o1.feed_fish
o1.play_with_cats
o1.walk_dogs





#binding.pry
