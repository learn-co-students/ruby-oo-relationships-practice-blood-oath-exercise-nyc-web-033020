class Follower
    attr_reader :name, :age, :life_motto
    @@all = []
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        Follower.all << self
    end

    def self.all
        @@all
    end

    def oaths
        Bloodoath.all.select do |oath|
            oath.follower == self
        end
    end

    def cults
        oaths.map do |oath|
            oath.cult 
        end
    end

    def join_cult(initiation_date, cult)
        Bloodoath.new(initiation_date ,self, cult)
    end

    def self.of_a_certain_age(num)
        Follower.all.select do |oath|
            oath.age > num
        end
    end
end