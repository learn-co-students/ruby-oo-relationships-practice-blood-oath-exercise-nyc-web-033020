require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("money", "phily", 1995, "get money")
c2 = Cult.new("flat earth", "nyc", 2003, "we are flat")
c3 = Cult.new("matrix", "nyc", 2003, " we are in the matrix")

f1 = Follower.new("edgar", 26, "computers")
f2 = Follower.new("lei", 25, "secure the bag")
f3 = Follower.new("bob", 19, "the horizon is flat")
f4 = Follower.new("steve", 16, "santa is real")


bo1 = BloodOath.new("2000-01-08", c3, f4)
bo2 = BloodOath.new("2007-01-08", c1, f1)
bo3 = BloodOath.new("2010-04-6", c3, f3)
bo3 = BloodOath.new("2010-04-6", c1, f2)
bo3 = BloodOath.new("2010-04-6", c1, f3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
