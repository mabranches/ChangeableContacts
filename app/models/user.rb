class User < ApplicationRecord
  ADMIN_EMAIL = 'admin@email.com'
  has_secure_password
  def admin?
    email == ADMIN_EMAIL
  end
end
