class UsersController < ApplicationController
  
  def index
    @users = User.all
    @book = Book.new
  end
  
  def show 
  end
  
  def edit
  end
  
  def update
  end
  
end
