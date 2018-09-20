require 'pry'
require_relative './cat.rb'
require_relative './dog.rb'
require_relative './fish.rb'
require_relative './owner.rb'


c1 = Cat.new("a")
c2 = Cat.new("b")
c3 = Cat.new("c")

d1 = Dog.new("d")
d2 = Dog.new("e")
d3 = Dog.new("f")

f1 = Fish.new("g")
f2 = Fish.new("h")
f3 = Fish.new("i")

o1 = Owner.new("a")




binding.pry
