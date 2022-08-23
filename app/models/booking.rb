class Booking < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :clothe
  has_one_attached :photo
end
