class OverviewsController < ApplicationController
  def show
    @daily_activities = DailyActivity.includes(:sport_type).all
  end
end
