class ApplicationController < ActionController::Base
  include SessionsHelper
  include Rails.application.routes.url_helpers
  protect_from_forgery with: :exception
  before_action :check_current_user

  def check_current_user
    return if request.path == login_path
    redirect_to login_path unless current_user
  end

end
