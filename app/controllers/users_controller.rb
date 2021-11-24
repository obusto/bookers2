class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.find(current_user.id)
    @book = Book.new

  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.book
  end

  def edit
  end
end
