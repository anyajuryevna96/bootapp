class SportTypesController < ApplicationController
  before_action :set_sport_type, only: %i[ show edit update destroy]

  def index
    @sport_types = SportType.all
  end

  def show
  end

  def new
    @sport_type = SportType.new
  end

  def create
    @sport_type = SportType.new(sport_type_params)
    if @sport_type.save
      redirect_to @sport_type
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @sport_types = SportType.all
  end

  def update
    if @sport_type.update(sport_type_params)
      redirect_to @sport_type
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
  @sport_type.destroy
  redirect_to sport_types_path
end

  private
  def sport_type_params
    params.expect(sport_type: [ :name, :default_duration  ])
  end

  def set_sport_type
    @sport_type = SportType.find(params[:id])
  end
end
