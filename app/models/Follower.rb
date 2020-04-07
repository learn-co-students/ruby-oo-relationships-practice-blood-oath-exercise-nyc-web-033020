class Follower
    attr_reader :name, :age, :life_motto
    @@all = []
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto =life_motto
        Follower.all << self
    end

    def self.all 
        @@all
    end 

    def bloodoaths
        BloodOath.all.select {|bloodoaths| bloodoaths.follower == self}
    end

    def cults
        bloodoaths.map {|follower| follower.cult}
    end

    def join_cult(cult, initiation_date)
        BloodOath.new(initiation_date, cult, self)
    end

    def self.of_a_certain_age(num)
        Follower.all.select {|follower| follower.age >= num}
    end

    def my_cults_slogans
        cults.map {|cults| cults.slogan}
    end

    def self.most_active
        Follower.all.max_by {|followers| followers.cults.count}
    end

    def self.top_ten
        Follower.all.sort_by {|followers| followers.cults.count}.last(10).reverse
    end
end