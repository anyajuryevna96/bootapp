class AddDistanceCaloriesDetailsToDailyActivities < ActiveRecord::Migration[8.0]
  def change
    add_column :daily_activities, :distance, :integer
    add_column :daily_activities, :calories, :integer
    add_column :daily_activities, :details, :text
  end
end
