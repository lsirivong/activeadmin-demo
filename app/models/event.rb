class Event < ActiveRecord::Base
  has_many :team_listings
  has_many :teams, through: :team_listings

end
