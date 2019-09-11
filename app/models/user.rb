class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create

  def average_rating
    counter = 0
    self.orders.each do |order|
        counter += order.rating
        end
    average_rating = (counter / self.orders.count).to_i
  end
end
