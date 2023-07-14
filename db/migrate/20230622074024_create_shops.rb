class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :approval, default: 0
      t.timestamps
    end
  end
end
