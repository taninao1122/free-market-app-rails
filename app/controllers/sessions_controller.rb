class SessionsController < ApplicationController
    def new
    end
    
    def create
      # TODO パスワードのハッシュ化
      user = User.find_by(email: params[:email], password: params[:password])
      if user.nil?
        render("sessions#new")
      else
        session[:user_id] = user.id
        redirect_to '/home/top'
      end
    end
    
    def destory
      if session[:user_id]
        session[:user_id] = nil
        redirect_to '/home/top'
      end
    end
  end