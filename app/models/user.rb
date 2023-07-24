class User < ApplicationRecord
  has_one_attached :profile,dependent: :destroy
  has_one :cart,dependent: :destroy
  has_one :shop, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :first_name, :last_name, :phone_number, presence: true
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable,:confirmable
         
  enum role: {
    buyer: 0,
    seller: 1,
    superadmin: 2
  }
  enum status: {
    inactive: 0,
    active: 1
  } 

  after_create do |user|
    user.create_cart
  end
end
