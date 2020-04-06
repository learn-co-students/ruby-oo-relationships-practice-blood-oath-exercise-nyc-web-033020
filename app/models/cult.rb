class Cult
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []
    def initialize(name, location, founding_year, slogan)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        Cult.all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(date,follower)
        Bloodoath.new(date,follower, self)
    end

    def oaths
        Bloodoath.all.select do |oath|
            oath.cult == self
        end
    end

    def cult_population
        oaths.count
    end

    def self.find_by_name(name)
        Cult.all.find do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        Cult.all.find do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(founding_year)
        Cult.all.find do |cult|
            cult.founding_year == founding_year
        end
    end
    
end

