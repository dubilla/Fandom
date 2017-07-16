class Opponent < ActiveRecord::Base
  belongs_to :game, inverse_of: :opponents
  belongs_to :team, inverse_of: :opponents

  scope :away, -> { where("opponents.home is false") }
  scope :home, -> { where("opponents.home is true") }

  delegate :name, to: :team
end
