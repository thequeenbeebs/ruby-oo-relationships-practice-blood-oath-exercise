class BloodOath
    attr_reader :follower, :cult
    attr_accessor :initiation_date

    @@all = []

    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        self.class.all << self
    end

    def self.all
        @@all
    end


end