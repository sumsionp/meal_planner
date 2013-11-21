Ingredient = Struct.new(:amount, :measure, :description)

class Dish
  attr_reader :name
  def initialize(name)
    @name = name
    @ingredients = []
  end

  def add_ingredient(ingredient)
    @ingredients << ingredient
  end
end

if __FILE__ == $0
  ingredient = Ingredient.new(2, "T.", "Chili Powder")
  puts ingredient
end
