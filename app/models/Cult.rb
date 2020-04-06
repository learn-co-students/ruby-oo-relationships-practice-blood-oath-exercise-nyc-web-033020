class Cult
    attr_accessor :name, :location, :slogan
    attr_reader :founding_year
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location =location
        @founding_year =founding_year
        @slogan = slogan
        @@all << self
    end
    def self.all
        @@all
    end
    def recruit_follower(date, follower)
        BloodOath.new(date, self, follower)
    end
    def cult_population
        counter = 0
        BloodOath.all.select do |key|
            if key.cult == self
                counter += 1
            end
        end
        counter
    end
    def self.find_by_name(name)
        BloodOath.all.select do |key|
            if key.follower.name == name
                return key.cult
            end
        end
    end
    def self.find_by_location(location)
        array = []
        @@all.select do |key|
            if key.location == location
                array << key
            end
        end
        array
    end
    def self.find_by_founding_year(year)
        array = []
        @@all.select do |key|
            if key.founding_year == year
                array << key
            end
        end
        array
    end
    def average_age
        average = 0
        total_age = 0
        total_followers = self.cult_population * 1.0
        BloodOath.all.select do |key|
            if key.cult == self
            total_age += key.follower.age
            end
        end
        average = total_age * 1.0 / total_followers
        average
    end
    def my_follower_motto
        array = []
        BloodOath.all.select do |key|
            if key.cult == self
                array << key.follower.life_motto
            end
        end
        array
    end
    def self.least_popular
        num = 9999999
        answer = nil
        @@all.select do |key|
            if key.cult_population < num
                answer = key
                num = key.cult_population
            end
        end
        answer
    end
end