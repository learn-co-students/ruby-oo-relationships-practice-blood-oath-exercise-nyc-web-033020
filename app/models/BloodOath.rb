class BloodOath
    attr_reader :initiation_date, :cult, :follower
    @@all = []
    def initialize(initiation_date, cult, follower)
        @initiation_date = initiation_date
        @cult = cult
        @follower = follower
        BloodOath.all << self
    end

    def self.all 
        @@all
    end

    def self.first_oath
        BloodOath.all.min_by {|}
    end

end