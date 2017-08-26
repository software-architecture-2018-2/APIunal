class PlanesController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @planes = Plane.all

    render json: @planes
  end

  # GET /users/1
  def show
    render json: @plane
  end

  # POST /users
  def create
    @plane = Plane.new(plane_params)

    if @plane.save
      render json: @plane, status: :created, location: @plane
    else
      render json: @plane.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @plane.update(plane_params)
      render json: @plane
    else
      render json: @plane.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @plane.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plane
      @plane = Plane.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def plane_params
      params.require(:plane).permit(:nombre, :aerolinea, :origen)
    end
end
