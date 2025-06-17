class DailyActivity < ApplicationRecord
  belongs_to :sport_type
  belongs_to :user

  def pace
    return nil unless distance.to_f > 0 && duration.to_f > 0
    (duration.to_f / distance).round(2) # minutes per kilometer
  end

  def speed
    return nil unless distance.to_f > 0 && duration.to_f > 0
    ((distance / duration.to_f) * 60).round(2) # kilometers per hour
  end
end
