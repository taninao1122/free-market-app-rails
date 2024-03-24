class UserController < ApplicationController
  #TODO before_actionの記載

  def profile
    @products = Product.where(user_id: @current_user.id)
  end

  def edit
    @user = User.find_by(id: @current_user.id)
  end

  def update
    user = User.find_by(id: @current_user.id)
    user.name = params['name']
    if params[:image]
      image = params[:image]
      user.profile_image = "#{user.id}.png"
      File.binwrite("public/profiles/#{user.profile_image}", image.read)
    else
      user.profile_image = "default.png"
    end

    if user.save
      flash[:notice] = "プロフィールの編集に成功しました"
      redirect_to("/profile/#{user.id}")
    else
      flash.now[:notice] = "プロフィールの編集に失敗しました"
      render("profile/#{user.id}/edit")
    end
  end
end
