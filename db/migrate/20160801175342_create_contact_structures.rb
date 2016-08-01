class CreateContactStructures < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_structures do |t|
      t.references :user, foreign_key: true
      t.references :data_type, foreign_key: true
      t.string :name
      t.jsonb :extra

      t.timestamps
    end
  end
end
