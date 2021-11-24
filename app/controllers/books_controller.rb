class BooksController < ApplicationController
  def new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  
  def index
    @books = Book.all
    @book = Book.new
    @user = User.find(current_user.id)
  end

  def show
    @book_new = Book.new
    @book = Book.find(params[:id])
    @user = User.find(current_user.id)
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
