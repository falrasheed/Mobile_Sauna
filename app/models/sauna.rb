class Sauna < ApplicationRecord
  belongs_to :user
  validates :address, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :capacity, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
end
