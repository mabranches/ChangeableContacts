class PopulateDataTypes < ActiveRecord::Migration[5.0]
  def up
    DataType.create([
      {name: 'text'},
      {name: 'text_area'},
      {name: 'combo_box'}
    ])

  end
  def down
    DataType.destroy_all
  end
end
