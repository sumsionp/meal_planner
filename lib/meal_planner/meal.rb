class Meal
  attr_reader :main_dish, :typical_time

  def initialize(main_dish, typical_time)
    @main_dish = main_dish
    @typical_time = typical_time.capitalize
  end

  def to_s
    "Main Dish: #{@main_dish}, Typical Time: #{@typical_time}"
  end
end
