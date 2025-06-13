class SportyTypesController < ApplicationController
  def index
    @sporty_types = SportyType.all
  end
  def new
    @sporty_types = SportActivity.new
  end
  def create
    @sport_activit = SportActivity.new(sport_activity_params)
    if @daily_activity.save
      redirect_to @sport_activity
    else
      render :new, status: :unprocessable_entity
    end
  end
end
