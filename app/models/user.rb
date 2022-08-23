class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
=======

  has_many :clothes, foreign_key: :owner_id
  has_many :bookings, foreign_key: :renter_id
  has_many :received_bookings, through: :clothes, source: :bookings

  has_one_attached :photo

>>>>>>> e973c65803b0288c69368adbb45ddbec52acf5f7
end
