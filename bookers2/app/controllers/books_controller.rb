class BooksController < ApplicationController

  def index
    #@user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    book.save
    redirect_to book_path(book.id)
  end

  def show
    @user = User.find(params[:id])
    @new_book = Book.new
    @book = Book.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end

end
