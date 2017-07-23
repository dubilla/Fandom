namespace :load_games do
  desc "Loads games into db"
  task mlb: :environment do
    require "httparty"
    url = "http://api.espn.com/v1/sports/baseball/mlb/events?apikey=dv58z289n3pf5yw4gxrpzrwq"
    response = HTTParty.get(url)
    data = response.parsed_response
    events = data["sports"][0]["leagues"][0]["events"]
    ActiveRecord::Base.transaction do
      events.each do |e|
        competition = e["competitions"][0]
        teams = competition["competitors"]
        game = Game.create(external_id: e["id"], starts_at: DateTime.parse(competition["date"]))
        teams.each_with_index do |t, index|
          puts t
          puts index
          Opponent.create(game: game, home: (t["homeAway"] == "home"), team: Team.find_by_external_id!(t[index]["team"]["id"]))
        end
      end
    end
  end
end
