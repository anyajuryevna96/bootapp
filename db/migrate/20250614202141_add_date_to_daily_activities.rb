class AddDateToDailyActivities < ActiveRecord::Migration[8.0]
  def change
    add_column :daily_activities, :date, :date
  end
end
