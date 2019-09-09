class Meal < ApplicationRecord
  belongs_to :cook
  has_many :orders
end
