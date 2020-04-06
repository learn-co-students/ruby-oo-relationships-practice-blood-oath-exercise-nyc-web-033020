require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chester = Follower.new("chester", 21, "life's goood")
lucy = Follower.new("lucy", 23, "get out")
max = Follower.new("max", 25, "hungry")
freddy = Follower.new("freddy", 30, "hello")

yumz = Cult.new("yumz.", "brooklyn", 2008, "we eat")
loners = Cult.new("loners","queens", 2010, "leave us alone")
allGood = Cult.new("allGood", "longisland",2012, "life is good" )

good = Bloodoath.new("2020-02-05", lucy, allGood)
eat = Bloodoath.new("2020-01-22", max, yumz)
alone = Bloodoath.new("2020-04-05", lucy, loners)

chester.join_cult("2020-04-05", allGood)
yumz.recruit_follower("2020-04-05", chester)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
