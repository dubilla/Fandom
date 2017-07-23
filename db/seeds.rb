# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create([
  [location: "Arizona", nickname: "Diamondbacks", external_id: 29],
  [location: "Atlanta", nickname: "Braves", external_id: 15],
  [location: "Baltimore", nickname: "Orioles", external_id: 1],
  [location: "Boston", nickname: "Red Sox", external_id: 2],
  [location: "Chicago", nickname: "Cubs", external_id: 16],
  [location: "Chicago", nickname: "White Sox", external_id: 4],
  [location: "Cincinnati", nickname: "Reds", external_id: 17],
  [location: "Cleveland", nickname: "Indians", external_id: 5],
  [location: "Colorado", nickname: "Rockies", external_id: 27],
  [location: "Detroit", nickname: "Tigers", external_id: 6],
  [location: "Houston", nickname: "Astros", external_id: 18],
  [location: "Kansas City", nickname: "Royals", external_id: 7],
  [location: "Los Angeles", nickname: "Angels", external_id: 3],
  [location: "Los Angeles", nickname: "Dodgers", external_id: 19],
  [location: "Miami", nickname: "Marlins", external_id: 28],
  [location: "Milwaukee", nickname: "Brewers", external_id: 8],
  [location: "Minnesota", nickname: "Twins", external_id: 9],
  [location: "New York", nickname: "Mets", external_id: 21],
  [location: "New York", nickname: "Yankees", external_id: 10],
  [location: "Oakland", nickname: "Athletics", external_id: 11],
  [location: "Philadelphia", nickname: "Phillies", external_id: 22],
  [location: "Pittsburgh", nickname: "Pirates", external_id: 23],
  [location: "San Diego", nickname: "Padres", external_id: 25],
  [location: "San Francisco", nickname: "Giants", external_id: 26],
  [location: "Seattle", nickname: "Mariners", external_id: 12],
  [location: "St. Louis", nickname: "Cardinals", external_id: 24],
  [location: "Tampa Bay", nickname: "Rays", external_id: 30],
  [location: "Texas", nickname: "Rangers", external_id: 13],
  [location: "Toronto", nickname: "Blue Jays", external_id: 14],
  [location: "Washington", nickname: "Nationals", external_id: 20]
])
