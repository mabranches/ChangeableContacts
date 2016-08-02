class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.references :user, foreign_key: true
      t.jsonb :extra

      t.timestamps
    end
  end
end
