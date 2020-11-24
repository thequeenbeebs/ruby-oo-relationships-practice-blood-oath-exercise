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

    def self.first_oath
        first_year = 2021
        first_month = 12
        first_day = 31
        first_follower = nil
        self.all.each do |oath|
            year = oath.initiation_date.split("-")[0].to_i
            month = oath.initiation_date.split("-")[1].to_i
            day = oath.initiation_date.split("-")[2].to_i
            if year < first_year
                first_year = year
                first_month = month
                first_day = day
                first_follower = oath.follower
            elsif year == first_year
                if month < first_month
                    first_year = year
                    first_month = month
                    first_day = day
                    first_follower = oath.follower
                elsif month == first_month
                    if day < first_day
                        first_year = year
                        first_month = month
                        first_day = day
                        first_follower = oath.follower
                    end
                end
            end
        end
        first_follower
    end


end