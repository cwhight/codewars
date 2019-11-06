def get_order(order)
  meals = %w(burger fries chicken pizza sandwich onionrings milkshake coke)
  meals.map do |meal|
    count = order.scan(meal).count
   "#{meal.capitalize} " * count if count > 0
  end.join[0..-2]
end
