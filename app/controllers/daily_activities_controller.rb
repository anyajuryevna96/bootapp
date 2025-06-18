class DailyActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_daily_activity, only: %i[show edit update destroy]
  before_action :load_sport_types, only: %i[new edit]

  def index
    @daily_activities = current_user.daily_activities.includes(:sport_type)
  end

  def show
  end

  def new
    if params[:daily_activity]
      @daily_activity = current_user.daily_activities.new(daily_activity_params)
      if @daily_activity.sport_type
        @daily_activity.duration ||= @daily_activity.sport_type.default_duration
      end
    else
      @daily_activity = current_user.daily_activities.new
    end
  end

  def create
    @daily_activity = current_user.daily_activities.new(daily_activity_params)
    if @daily_activity.save
      redirect_to @daily_activity, notice: "Activity was successfully created."
    else
      load_sport_types
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @daily_activity.update(daily_activity_params)
      redirect_to @daily_activity, notice: "Activity was successfully updated."
    else
      load_sport_types
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @daily_activity.destroy
    redirect_to daily_activities_path, notice: "Activity was successfully deleted."
  end

  private

  def set_daily_activity
    @daily_activity = current_user.daily_activities.find(params[:id])
  end

  def daily_activity_params
    params.require(:daily_activity).permit(:sport_type_id, :duration, :set, :distance, :calories, :details, :date)
  end

  def load_sport_types
    @sport_types = SportType.all
  end
end
