class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :update, :destroy]

  # GET /users
  def index
    @films = Film.all

    render json: @films
  end

  # GET /users/1
  def show
    render json: @film
  end

  # POST /users
  def create
    @film = Film.new(film_params)

    if @film.save
      render json: @film, status: :created, location: @film
    else
      render json: @film.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @film.update(film_params)
      render json: @film
    else
      render json: @film.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @film.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      @film = Film.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def film_params
      params.require(:film).permit(:nombre, :director, :anio)
    end
end
