class CreateTeamListings < ActiveRecord::Migration
  def change
    create_table :team_listings do |t|
      t.references :team, index: true
      t.references :event, index: true
      t.integer :lane_number

      t.timestamps
    end
  end
end
