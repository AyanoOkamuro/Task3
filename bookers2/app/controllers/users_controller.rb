class UsersController < ApplicationController
  
  def index
    @users = User.all
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    book.save
    redirect_to book_path(book.id)
  end
  
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end
  
  def edit
  end
  
  def update
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
  
end
