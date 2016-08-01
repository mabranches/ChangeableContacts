class AdminUser < ActiveRecord::Migration[5.0]
  def up
    User.create(name: 'admin', email: User::ADMIN_EMAIL,
                password: 'admin', password_confirmation: 'admin')
  end

  def down
    User.where(email: User::ADMIN_EMAIL).destroy_all
  end
end
