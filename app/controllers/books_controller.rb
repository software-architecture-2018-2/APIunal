class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]

  # GET /users
  def index
    @books = Book.all

    render json: @books
  end

  # GET /users/1
  def show
    render json: @book
  end

  # POST /users
  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @book.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_params
      params.require(:book).permit(:nombre, :autor, :isbn)
    end
end
