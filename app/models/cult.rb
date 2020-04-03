class Cult
    attr_reader :name, :location, :founding_year, :slogan
    @@all = [ ]
    def initialize(name,location,founding_year,slogan)
        @name = name 
        @location = location 
        @founding_year = founding_year
        @slogan = slogan
        Cult.all << self 
    end 

    def self.all
        @@all
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
        BloodOath.new(self, follower, date)
    end 

    def cult_population
        BloodOath.all.select do |oath|
            oath.cult == self 
        end.length 
    end 
end 