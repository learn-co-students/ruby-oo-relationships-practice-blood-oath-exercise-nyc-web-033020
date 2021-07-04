class Follower
    attr_accessor :name, :age, :life_motto
    @@all = []
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end
    def self.all 
        @@all
    end
    def cults
        array = []
        BloodOath.all.select do |key|
            if key.follower == self
                array << key.cult
            end
        end
        array
    end
    def join_cult(date, cult)
        BloodOath.new(date, cult, self)
    end
    def self.of_a_certain_age(age)
        array = []
        @@all.select do |key|
            if key.age >= age
                array << key
            end
        end
        array
    end
    def my_cults_slogans
        array = []
        BloodOath.all.select do |key|
            if key.follower == self
                array << key.cult.slogan
            end
        end
        array
    end
    def self.most_active
        num = 0
        answer = nil
        @@all.each do |key|
            if key.cults.count > num
                num = key.cults.count
                answer = key
            end
        end
        answer
    end
end