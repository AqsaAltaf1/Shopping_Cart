class Shop < ApplicationRecord
  belongs_to :user
  validates :Name, presence: true

  enum approval: {
    Approved: 1,
    NotApproved: 0
  }
end
