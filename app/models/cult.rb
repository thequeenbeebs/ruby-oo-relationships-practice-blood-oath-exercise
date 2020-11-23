class Cult
    attr_reader :name
    attr_accessor :location, :founding_year, :slogan 

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def recruit_follower(follower)
        BloodOath.new(follower, self)
    end

    def cult_population
        BloodOath.all.count do |bloodoath|
            bloodoath.cult == self
        end
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        Cult.all.find do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        Cult.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        Cult.all.select do |cult|
            cult.founding_year == year
        end
    end

end