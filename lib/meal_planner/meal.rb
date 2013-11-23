class Meal
  attr_reader :main_dish

  def initialize(main_dish)
    @main_dish = main_dish
  end

  def to_s
    "Main Dish: #{@main_dish}"
  end
end
