require "rails_helper"

RSpec.feature "Game Schedule", type: :feature do
  let!(:game) { create :game }
  let!(:red_sox) { Team.find_by_nickname("Red Sox") }
  let!(:yankees) { Team.find_by_nickname("Yankees") }
  let!(:away_opponent) { create :opponent, team: red_sox, game: game }
  let!(:home_opponent) { create :opponent, team: yankees, home: true, game: game }

  scenario "User sees the game schedule" do
    visit games_path

    within "section", text: "Today's Games" do
      expect(page).to have_text "Boston Red Sox at New York Yankees"
    end
  end
end
