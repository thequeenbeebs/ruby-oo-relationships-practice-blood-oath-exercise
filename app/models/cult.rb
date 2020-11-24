class Cult
    attr_reader :name
    attr_accessor :location, :founding_year, :slogan 

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def followers
        followers = []
        BloodOath.all.each do |oath|
            if oath.cult == self
                followers << oath.follower
            end
        end
        followers
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

    def average_age
        all_ages = 0
        self.followers.each do |follower|
            all_ages += follower.age
        end
        all_ages.to_f / self.followers.length
    end

    def my_followers_mottos
        self.followers.each do |follower|
            print follower.life_motto
        end
    end

    def self.least_popular
        Cult.all.min do |a, b|
            a.followers.length <=> b.followers.length
        end
    end

    def self.most_common_location
        locations = {}
        Cult.all.each do |cult|
            if locations[cult.location] == nil 
                locations[cult.location] = 1 
            else
                locations[cult.location] += 1
            end
        end
        most = 0
        most_location = nil
        locations.each do |k, v|
            if v > most
                most = v
                most_location = k
            end
        end
        most_location
    end

end