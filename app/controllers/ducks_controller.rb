class DucksController < ApplicationController
  before_action :set_request, only: [:show, :update, :destroy]

  # GET /users
  def index
    @ducks = Duck.all

    render json: @ducks
  end

  # GET /users/1
  def show
    render json: @duck
  end

  # POST /reques
  def create
    @duck = Duck.new(duck_params)

    if @duck.save
      render json: @duck, status: :created, location: @duck
    else
      render json: @duck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @duck.update(duck_params)
      render json: @duck
    else
      render json: @duck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @duck.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duck
      @duck = Ducks.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def duck_params
      params.require(:duck).permit(:nombre, :color, :edad)
    end
end
