class DailyActivitiesController < ApplicationController
  before_action :set_daily_activity, only: %i[ show edit update destroy]
  def index
    @daily_activities = DailyActivity.all
  end

  def show
  end

  def new
    @sporty_types = SportyType.all
    @daily_activity = DailyActivity.new
  end

  def create
    @daily_activity = DailyActivity.new(daily_activity_params)
    if @daily_activity.save
      redirect_to @daily_activity
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @sporty_types = SportyType.all
  end

  def update
    if @daily_activity.update(daily_activity_params)
      redirect_to @daily_activity
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @daily_activity.destroy
    redirect_to daily_activities_path
  end

  private
  def daily_activity_params
    params.expect(daily_activity: [ :set, :duration, :sporty_type_id ])
  end

  def set_daily_activity
    @daily_activity = DailyActivity.find(params[:id])
  end
end
