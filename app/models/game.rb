class Game < ActiveRecord::Base
  has_many :opponents, inverse_of: :game
  has_one :away_opponent, -> { Opponent.away }, class_name: Opponent
  has_one :home_opponent, -> { Opponent.home }, class_name: Opponent
end
