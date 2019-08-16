class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sauna
  validates :start_date, presence: true
  validates :end_date, presence: true
  after_create :set_total_price

  def set_total_price
    self.total_price = self.sauna.price * (self.end_date - self.start_date).to_i
    self.save
  end
end
