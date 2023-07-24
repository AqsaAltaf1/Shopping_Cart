class Product < ApplicationRecord
  belongs_to :category
  belongs_to :shop
  has_many_attached :files
  has_many :items, dependent: :delete_all
  has_many :carts , through: :items
  has_many :reviews, dependent: :destroy
  validates :name, :description, :price, :category_id, Presence: true
end 
