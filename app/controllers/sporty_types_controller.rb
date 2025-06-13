class SportyTypesController < ApplicationController
  before_action :set_sporty_type, only: %i[ show ]

  def index
    @sporty_types = SportyType.all
  end

  def show
  end

  def new
    @sporty_type = SportyType.new
  end

  def create
    @sporty_type = SportyType.new(sporty_type_params)
    if @sporty_type.save
      redirect_to @sporty_type
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def sporty_type_params
    params.expect(sporty_type: [ :name ])
  end

  def set_sporty_type
    @sporty_type = SportyType.find(params[:id])
  end
end
