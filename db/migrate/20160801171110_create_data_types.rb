class CreateDataTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :data_types do |t|
      t.string :name
      t.integer :lock_version

      t.timestamps
    end
  end
end
