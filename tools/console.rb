# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# require_relative '../app/models/car_owner.rb'
# require_relative '../app/models/car.rb'
# require_relative '../app/models/mechanic.rb'

require 'pry'


# test code goes here

l1 = Lifter.new("ta", 100)
l2 = Lifter.new("ti", 200)
l3 = Lifter.new("to", 300)
l4 = Lifter.new("tee", 400)
l5 = Lifter.new("ty", 500)

g1 = Gym.new("geeeee")
g2 = Gym.new("ga ")
g3 = Gym.new(" gii")
g4 = Gym.new("gees ")
g5 = Gym.new(" gyes")

m1 = Membership.new(40, l1, g1)
m1 = Membership.new(60, l1, g2)
m1 = Membership.new(100, l1, g3)
m1 = Membership.new(40, l2, g1)
m1 = Membership.new(40, l3, g1)
m1 = Membership.new(40, l2, g4)

binding.pry

puts "Gains!"
