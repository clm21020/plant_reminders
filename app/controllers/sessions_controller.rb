class SessionsController < ApplicationController
  skip_before_action :ensure_signed_in, only: [:new, :create]

  def new
  end

  def create
    username, password = params[:user][:username], params[:user][:password]
    user = User.find_by_credentials(username, password)
    if user.nil?
      flash.now[:errors] = ["Invalid username or password"]
      render :new
    else
      sign_in!(user)
      redirect_to user_url(user)
    end
  end

  def destroy

  end
end
