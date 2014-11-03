class CreateBowlers < ActiveRecord::Migration
  def change
    create_table :bowlers do |t|
      t.string :name
      t.references :team, index: true

      t.timestamps
    end
  end
end
