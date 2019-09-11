class Cook < User
  has_many :meals, dependent: :destroy
  belongs_to :daily_meal, class_name: 'Meal', required: false

  def orders_reviews
   meals.map(&:orders).flatten
  end
end
