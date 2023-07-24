class Shop < ApplicationRecord
  belongs_to :user
  has_many :products,dependent: :destroy
  validates :name, presence: true

  enum approval: {
    Approved: 1,
    NotApproved: 0
  }
end
