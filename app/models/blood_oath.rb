class BloodOath 
    attr_reader :cult, :follower, :date 
    @@all = [ ]
    def initialize(cult, follower, date=Time.now)
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

    def self.first_oath
        # Sort by oath date, return follower prop of fist index
        BloodOath.all.sort_by{|oath| oath.date}[0].follower
    end

end 
