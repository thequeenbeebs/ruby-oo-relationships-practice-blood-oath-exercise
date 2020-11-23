class Follower
    attr_reader :name
    attr_accessor :age, :life_motto

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def cults
        BloodOath.all.select do |oath|
            oath.follower == self
        end
    end

    def join_cult(cult)
        BloodOath.new(self, cult)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age
        end
    end

end
