class Sauna < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :address, presence: true, uniqueness: true
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :capacity, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
