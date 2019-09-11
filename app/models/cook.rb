class Cook < User
  has_many :meals, dependent: :destroy
  belongs_to :daily_meal, class_name: 'Meal', required: false

  def orders_reviews
   meals.map(&:orders).flatten
  end

  def average_rating
    counter = 0
    self.orders.rated.each do |order|
      counter += order.rating
    end
    average_rating = (counter / self.orders.rated.count).to_i
  end
end
