class Cart < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :items, dependent: :delete_all
  has_many :products , through: :items
end
