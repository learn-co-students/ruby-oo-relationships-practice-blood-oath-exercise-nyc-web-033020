require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Salope", "Queens", 2000, "ou c en salope")
cult2 = Cult.new("Ti mal", "Queens", 2005, "ou c en ti mal")
cult3 = Cult.new("pizza", "Queens", 2008, "jaim les pizza!")
cult4 = Cult.new("Tiger", "Bronx", 2010, "Joe exotic!!")
cult5 = Cult.new("lion", "staten i", 2012, "carole the queen")
cult6 = Cult.new("the boss", "Bronx", 2004, "Doc Antle!!!!")
cult7 = Cult.new("balls deep", "Brooklyn", 2016, "we deep deep")

follower1 = Follower.new("jordan", 24, "1 for all")
follower2 = Follower.new("ted", 28, "all for 1")
follower3 = Follower.new("ignace", 32, "1 pour tous")
follower4 = Follower.new("Kal", 40, "tous pour 1")
follower5 = Follower.new("kevin", 20, "im so high rn")
follower6 = Follower.new("Deku", 15, "I will do it")
follower7 = Follower.new("Bakoogo", 16, "i'll crush it")
follower8 = Follower.new("All might", 45, "smile")
follower9 = Follower.new("Superman", 100, "it's a bird")

follower1.join_cult(2001, cult1)
follower2.join_cult(2002, cult1)
follower3.join_cult(2002, cult1)
follower1.join_cult(2003, cult2)
follower4.join_cult(2002, cult2)
follower4.join_cult(2003, cult3)
follower5.join_cult(20010, cult4)
follower5.join_cult(2011, cult5)
follower6.join_cult(2004, cult6)
follower7.join_cult(2018, cult7)

cult7.recruit_follower(2016, follower8)
cult4.recruit_follower(2010, follower9)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
