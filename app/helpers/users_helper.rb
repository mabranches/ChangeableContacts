module UsersHelper
  def redirect_non_admin
    redirect_to current_user unless current_user.admin?
  end
end
