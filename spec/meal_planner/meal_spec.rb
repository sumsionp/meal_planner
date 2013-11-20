require 'meal_planner/meal'

describe Meal do
  before do
    @meal = Meal.new("Rice and Meat Sauce")
  end

  it "has a main dish"

  it "has a list of suggested side dishes"

  it "has a typical meal time"

  it "has a string representation" do
    @meal.to_s.should == "Meal: Rice and Meat Sauce"
  end
end
