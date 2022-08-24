class Clothe < ApplicationRecord
  belongs_to :owner, class_name: "User"

  has_many :bookings

  has_one_attached :photo

  CATEGORY = %W[Jackets Parkas Sweaters Cardigans T-shirt Tank\ top Shirt Hoodie Crop\ top Sport\ sweat Socks Shoes Neckless Accessories]
  GENDER = %W[Man Women]
  SIZE = %W[XS S M L XL]
  COLOR = %W[Black White Blue Green Purple Pink Yellow Orange Brown Red]

  validates :title, presence: true
  validates :description, presence: true
  validates :gender, inclusion: { in: GENDER }
  validates :size, inclusion: { in: SIZE }
  validates :category, inclusion: { in: CATEGORY }
  validates :color, inclusion: { in: COLOR }
  validates :address, presence: true
  validates :daily_price, presence: true
end
