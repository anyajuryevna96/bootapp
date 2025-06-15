
  class CalendarsController < ApplicationController
    def show
      @activities = DailyActivity.includes(:sport_type).where.not(date: nil)
    end
  end
