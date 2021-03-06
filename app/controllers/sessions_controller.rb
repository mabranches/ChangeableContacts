class SessionsController < ApplicationController

  def new
    redirect current_user if current_user
  end

  def create
    user = find_user
    if auth user
      log_in user
      redirect user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  private

    def find_user
      User.find_by(email: params[:session][:email].downcase)
    end

    def auth(user)
      user && user.authenticate(params[:session][:password])
    end

    def redirect(user)
      if user.admin?
        redirect_to users_path
      else
        redirect_to user
      end
    end
end
