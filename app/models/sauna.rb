class Sauna < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :address, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :capacity, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
end
