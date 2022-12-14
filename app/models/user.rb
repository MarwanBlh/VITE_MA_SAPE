class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clothes, foreign_key: :owner_id
  has_many :bookings, foreign_key: :renter_id
  has_many :received_bookings, through: :clothes, source: :bookings

  has_one_attached :photo
  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
