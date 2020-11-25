require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

heaven = Cult.new("Heaven's Gate")
manson = Cult.new("Manson Family")
branch = Cult.new("Branch Davidians")
scientology = Cult.new("Church of Scientology")
nxivm = Cult.new("NXIVUM")

charles = Follower.new("Charles Manson")
david = Follower.new("David Koresh")
ted = Follower.new("Ted Bundy")
jim = Follower.new("Jim Jones")
jill = Follower.new("Jill Johnson")
thomas = Follower.new("Thomas")
jack = Follower.new("Jack")
joe = Follower.new("Joe")
cheryl = Follower.new("Cheryl")
chuck = Follower.new("Chuck")


bo1 = BloodOath.new(charles, manson)
bo2 = BloodOath.new(david, branch)
bo3 = BloodOath.new(ted, manson)
bo4 = BloodOath.new(jim, scientology)
bo5 = BloodOath.new(jill, nxivm)
bo6 = BloodOath.new(charles, branch)
bo7 = BloodOath.new(jill, manson)
bo8 = BloodOath.new(jill, scientology)
bo9 = BloodOath.new(jill, branch)
bo10 = BloodOath.new(jill, heaven)
bo11 = BloodOath.new(jim, heaven)
bo12 = BloodOath.new(jim, branch)

jill.age = 25
ted.age = 50
jim.age = 75
charles.age = 30
david.age = 40
chuck.age = 16

heaven.location = "California"
manson.location = "California"
branch.location = "Waco"

heaven.founding_year = 1997
manson.founding_year = 1969
branch.founding_year = 1993

manson.slogan = "Pigs"
heaven.slogan = "Heaven on Earth"
branch.slogan = "Wacko Waco"
nxivm.slogan = "We Hate Women"
scientology.slogan = "Tom Cruise"

jill.life_motto = "Q knows all"

bo1.initiation_date = "1969-11-12"
bo2.initiation_date = "1950-10-31"
bo3.initiation_date = "1950-08-15"
bo4.initiation_date = "1950-08-14"
bo5.initiation_date = "2020-11-23"

branch.minimum_age = 18

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits