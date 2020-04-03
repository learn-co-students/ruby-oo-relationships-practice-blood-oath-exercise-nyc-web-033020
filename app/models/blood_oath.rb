class BloodOath 
    attr_reader :cult, :follower, :date 
    @@all = [ ]
    def initialize(cult, follower, date)
        @cult = cult 
        @follower = follower 
        @date = date 
        BloodOath.all << self 
    end 

    def self.all
        @@all
    end 

    def initiation_date
        return self.date 
    end 

end 
