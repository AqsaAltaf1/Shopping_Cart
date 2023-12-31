class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, foreign_key: true
      t.float     :rating, default: 0
      t.text       :body
      t.timestamps
    end
  end
end
