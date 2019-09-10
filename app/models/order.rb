class Order < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  validates :time, presence: true
end
