class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:top,:about]

  def top
    if user_signed_in?
      redirect_to books_new_path
    end
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
      @book = Book.find(params[:id])
      @book1 = Book.new
  end

  def new
    @book = Book.new
    @books = Book.all
  end

  def create
      book = Book.new(book_params)
      book.user_id = current_user.id
      # binding.pry
      book.save
      redirect_to books_new_path
  end

  def about
  end

  def edit
      @book = Book.find(params[:id])
  end

  def update
      book = Book.find(params[:id])
      book.update(book_params)
      redirect_to books_path(book.id)
  end

  def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to books_path
  end

  private
  def book_params
       params.require(:book).permit(:title, :body)

  end
end



