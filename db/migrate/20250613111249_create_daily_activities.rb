class CreateDailyActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :daily_activities do |t|
      t.references :sport_type, null: false, foreign_key: true
      t.integer :duration, null: true, default: 0
      t.integer :set, null: true, default: 0
      t.timestamps
    end
  end
end
