class Team < ActiveRecord::Base
  has_many :team_listings
  has_many :bowlers
end
