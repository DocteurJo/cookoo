class Cook < User
  has_many :meals, dependent: :destroy
  belongs_to :daily_meal, class_name: 'Meal', required: false

  def orders_reviews
   meals.map(&:orders).flatten
  end

  def average_rating
    counter = 0
    meals = Meal.where(cook_id: self)
    order_count = 0

    meals.each do |meal|
      order_count += meal.orders.count
      rated_orders = meal.orders
      rated_orders.each do |order|
        counter += order.rating
      end
    end

    if counter.zero?
      average_rating = 0
    else
      average_rating = (counter / order_count).to_i
    end
    average_rating
  end
end
