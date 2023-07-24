class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user,optional: true
  validates :rating, :body, presence: true
end
