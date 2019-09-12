  class Order < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  validates :time, presence: true

  scope :rated, -> { where.not(rating: nil)}

  def available_quantities
    # TODO return the real available quantity based on the stock
    (1..8)
  end
end
