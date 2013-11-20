require 'meal_planner/dish.rb'

describe Dish do
  before do
    @ingredients = [
      Ingredient.new(1.5, "C.", "Potatoe Flour"),
      Ingredient.new(2, "T.", "Nutmeg"),
      Ingredient.new(0.5, "tsp.", "Thyme")
    ]

    @dish = Dish.new("Funky Pie")
  end

  it "has a name" do
    @dish.name.should == "Funky Pie"
  end

  it "has a list of ingredients"

  it "has a list of ordered instructions"

end
