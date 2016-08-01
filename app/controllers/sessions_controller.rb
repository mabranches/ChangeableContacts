class SessionsController < ApplicationController

  def new
  end

  def create
    user = find_user
    if auth user
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out user
    redirect_to root_url
  end

  private

    def find_user
      User.find_by(email: params[:session][:email].downcase)
    end

    def auth(user)
      user && user.authenticate(params[:session][:password])
    end
end
