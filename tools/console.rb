require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



sunflower = Follower.new("Sunflower",23, "Always Shinning when youre a sunflower!")
rose = Follower.new("Rose",45, "Hey, Im a flower too!")
silver = Follower.new("Silver", 28, "Live laugh love")

sudo = Cult.new("The Elders of Sudo", "The Root Forest", 1970, "Behold, we are Root")
greg = Cult.new("The Church of Greggory","Brooklyn", 2017, "We Bow Before Him")
justice = Cult.new("Seekers of Justice", "Moscow", 1919, "LOL Justice") 
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
