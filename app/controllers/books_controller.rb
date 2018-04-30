class BooksController < ApplicationController
  before_action :authenticate_user!

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
    if Book.exists?(id: params[:id])
      @book = Book.find(params[:id])
    else
      redirect_to root_path
    end
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
    if book.update(book_params)
       flash[:success] = "編集完了"
       redirect_to books_new_path(book.id)
    else
      render 'edit'
    end
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



