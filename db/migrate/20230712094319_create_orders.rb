class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :cart, null: false, foreign_key: true
      t.bigint    :total_bill
      t.text    :shipping_address
      t.string    :payment_method
      t.timestamps
    end
  end
end
