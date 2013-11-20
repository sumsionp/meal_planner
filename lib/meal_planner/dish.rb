Ingredient = Struct.new(:amount, :measure, :description)

class Dish

end

if __FILE__ == $0
  ingredient = Ingredient.new(2, "T.", "Chili Powder")
  puts ingredient
end
