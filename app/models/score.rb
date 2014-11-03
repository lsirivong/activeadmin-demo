class Score < ActiveRecord::Base
  belongs_to :bowler
  belongs_to :event
end
