class Cook < User
  has_many :meals, dependent: :destroy
  belongs_to :daily_meal, class_name: 'Meal', required: false

  def orders_reviews
   meals.map(&:orders).flatten
  end

  def average_rating
    counter = 0
    rated_orders = self.orders.rated
    rated_orders.each do |order|
      counter += order.rating
    end

    if rated_orders.count == 0
      average_rating = 0
    else
      average_rating = (counter / rated_orders.count).to_i
    end
  end
end
