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

bo1 = BloodOath.new(charles, manson)
bo2 = BloodOath.new(david, branch)
bo3 = BloodOath.new(ted, manson)
bo4 = BloodOath.new(jim, scientology)
bo5 = BloodOath.new(jill, nxivm)

jill.age = 25
ted.age = 50
jim.age = 75
charles.age = 30
david.age = 40

heaven.location = "California"
manson.location = "California"
branch.location = "Waco"

heaven.founding_year = 1997
manson.founding_year = 1969
branch.founding_year = 1993

manson.slogan = "Pigs"

jill.life_motto = "Q knows all"

bo1.initiation_date = "1969-11-12"

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits