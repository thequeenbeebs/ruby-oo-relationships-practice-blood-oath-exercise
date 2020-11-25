class Follower
    attr_reader :name
    attr_accessor :age, :life_motto

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def cults
        cults = []
        BloodOath.all.each do |oath|
            if oath.follower == self
                cults << oath.cult
            end
        end
        cults
    end

    def join_cult(cult)
        if cult.minimum_age != nil && self.age >= cult.minimum_age
            BloodOath.new(self, cult)
        else
            "You are not old enough to join this cult."
        end   
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age
        end
    end

    def my_cults_slogans
        self.cults.map do |cult|
            cult.slogan
        end
    end

    def self.most_active
        self.all.max do |a, b|
            a.cults.length <=> b.cults.length
        end
    end

    def self.top_ten
        top_ten = []
        all = self.all
        10.times {
            top_ten << self.most_active
            self.all.delete(self.most_active)
        }
        top_ten
    end

    def fellow_cult_members
        fellows = []
        self.cults.map do |cult|
            cult.followers.each do |follower|
                fellows << follower
            end
        end
        fellows = fellows.uniq
        fellows.delete(self)
        fellows
    end

end
