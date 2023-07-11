class User < ApplicationRecord
  has_one :cart,dependent: :destroy
  has_one :shop, dependent: :destroy
  validates :First_Name, :Last_Name, :Phone_number, presence: true
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable,:confirmable
         
  enum role: {
    buyer: 0,
    seller: 1,
    SuperAdmin: 2
  }
  enum status: {
    inactive: 0,
    active: 1
  } 
end
