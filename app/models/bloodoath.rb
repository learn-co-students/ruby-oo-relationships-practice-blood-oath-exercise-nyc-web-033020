class Bloodoath
    attr_reader :initiation_date, :follower, :cult

    @@all = []
    def initialize(initiation_date, follower, cult)
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult
        Bloodoath.all << self
    end

    def self.all
        @@all
    end

    
end