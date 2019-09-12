class Meal < ApplicationRecord
  belongs_to :cook
  has_many :orders

  validates :category, presence: true
  validates :title, presence: true
  validates :description, presence: true, length: { maximum: 300 }
  validates :price, presence: true
  validates :quantity, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
