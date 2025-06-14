class OverviewsController < ApplicationController
  def show
    @daily_activities = DailyActivity.all
  end
end
