class Cult
    attr_reader :name, :location, :founding_year, :slogan
    attr_accessor :min_age
    @@all = [ ]
    def initialize(name,location,founding_year,slogan,min_age=nil)
        @name = name 
        @location = location 
        @founding_year = founding_year
        @slogan = slogan
        @min_age = min_age
        Cult.all << self 
    end 

    def self.all
        @@all
    end 

    def all_followers
        BloodOath.all.select{|oath| oath.cult == self}
            .map{|oath| oath.follower}
    end
    def self.find_by_name (name)
        self.all.find do |cult|
            cult.name == name 
        end 
    end 

    def self.find_by_location(location)
        self.all.find do |cult|
            cult.location == location 
        end 
    end 

    def self.find_by_founding_year(year)
        self.all.find do |cult|
            cult.founding_year == year 
        end 
    end 

    def recruit_follower(follower, date = Time.now)
        min_age && follower.age >= min_age ? BloodOath.new(self, follower, date)
        : "They are but a child!"
    end 

    def cult_population
        BloodOath.all.select do |oath|
            oath.cult == self 
        end.length 
    end 
    def average_age
        (BloodOath.all.select{|oath| oath.cult == self}
            .map{|oath| oath.follower.age})
            .sum.to_f  / cult_population
    end
    def my_followers_mottos
        BloodOath.all.select{|oath| oath.cult == self}
            .each{|oath| puts oath.follower.life_motto}
        nil
    end
    def self.most_common_location
        # Create a new empty hash, initialized with 0
        count = Hash.new 0
        # Iterate over @@all and create a new hash counting locations
        Cult.all.each{|cult| count[cult.location] += 1}
        # Sort by count, return string from last index
        count.sort_by{|location,count| count}[-1][0]
    end
    def self.least_popular
        Cult.all.sort_by{|cult| cult.cult_population}[0]
    end
end 
