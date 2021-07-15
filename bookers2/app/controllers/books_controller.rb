class BooksController < ApplicationController
  
  def index
    @user = User.find(current_user.id)
    @book = Book.new
    @books = Book.all
  end
  
  def show
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end

  def destroy
  end 
  
end
