class Booking < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :clothe

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :clothe, presence: true, uniqueness: true
  validates :renter, presence: true, uniqueness: true
end
