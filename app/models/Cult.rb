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

    def bloodoaths
        BloodOath.all.select {|bloodoaths| bloodoaths.cult == self}
    end

    def recruit_follower(follower, initiation_date)
        BloodOath.new(initiation_date, self, follower)
    end

    def cult_population
        bloodoaths.count
    end

    def self.find_by_name(name)
        Cult.all.select {|cults| cults.name == name}
    end

    def self.find_by_location(location)
        Cult.all.select {|cults| cults.location == location}
    end

    def self.find_by_founding_year(year)
        Cult.all.select {|cults| cults.founding_year == year}
    end

    def followers
        bloodoaths.map {|cults| cults.follower}
    end

    def location_density
        
        Cult.all.max_by {|cults| cults.location}
    end


    def average_age
        followers.map {|follower| follower.age}.sum / followers.count.to_f
    end

    def my_followers_mottos
        followers.map {|follower| follower.life_motto}
    end

    def self.least_popular
        Cult.all.min_by {|cults| cults.followers.count}
    end

    def self.most_common_location

    end


end

