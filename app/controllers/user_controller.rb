class UserController < ApplicationController
  def profile
    
  end

  def edit
    @user = User.new()
  end

  def login
  end
  
  def logout
  end
end
