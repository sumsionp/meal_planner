require 'meal_planner/recipe.rb'

describe Recipe do
  before do
    @ingredients = [
      Ingredient.new(1.5, "C.", "Potatoe Flour"),
      Ingredient.new(2, "T.", "Nutmeg"),
      Ingredient.new(0.5, "tsp.", "Thyme")
    ]

    @dish = Recipe.new("Funky Pie")
    
    @ingredients.each do |ingredient|
      @dish.add_ingredient(ingredient)
    end
  end

  it "has a name" do
    @dish.name.should == "Funky Pie"
  end
end
