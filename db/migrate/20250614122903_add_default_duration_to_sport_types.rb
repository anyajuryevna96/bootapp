class AddDefaultDurationToSportTypes < ActiveRecord::Migration[8.0]
  def change
    add_column :sport_types, :default_duration, :integer, default: 60
  end
end
