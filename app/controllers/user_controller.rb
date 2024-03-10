class UserController < ApplicationController
  def profile
    
  end

  def edit
    @user = User.new()
  end

end
