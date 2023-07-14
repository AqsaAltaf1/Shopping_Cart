class Shop < ApplicationRecord
  belongs_to :user
  validates :name, presence: true

  enum approval: {
    Approved: 1,
    NotApproved: 0
  }
end
