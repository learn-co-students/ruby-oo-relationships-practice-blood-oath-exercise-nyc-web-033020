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

    def my_cults_slogans
        BloodOath.all.select{|oath| oath.follower == self}
            .map{|oath| oath.cult.slogan}
    end
    def self.most_active
        Follower.all.sort_by{|follower| follower.cults.length}[-1]
    end
    def self.top_three
        sorted = Follower.all.sort_by{|follower| follower.cults.length}
        while sorted.length > 3 do
          sorted.pop
        end
        sorted
    end
    def fellow_cult_members
        cults.map{|oath| oath.cult.all_followers}.uniq
    end
    def join_cult(cult)
        cult.min_age && age <= cult.min_age ? "Maybe when youre older" 
        : BloodOath.new(cult, self, Time.now)
    end
end
