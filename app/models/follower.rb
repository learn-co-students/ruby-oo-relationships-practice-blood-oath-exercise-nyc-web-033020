class Follower 
    @@all = [ ]
    attr_reader :name, :age, :life_motto
    def initialize(name, age, life_motto)
        @name = name 
        @age = age 
        @life_motto = life_motto
        Follower.all << self 
    end 

    def self.all
        @@all
    end 
    def cults 
        BloodOath.all.select do | oath|
            oath.follower == self 
        end
    end 
    def join_cult(cult, date = Time.now)
        BloodOath.new(cult, self, date) 
    end 

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age 
        end 
    end 

end 