class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :Name
      t.text :Description
      t.bigint :Price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
