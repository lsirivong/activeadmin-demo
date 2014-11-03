class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :total
      t.references :bowler, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
