class Team < ActiveRecord::Base
  has_many :opponents, inverse_of: :team
  has_many :games, through: :opponents

  def name
    location + " " + nickname
  end
end
