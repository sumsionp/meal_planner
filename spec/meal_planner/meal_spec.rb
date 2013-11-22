require 'meal_planner/meal'

describe Meal do
  before do
    @main_dish = "Rice and Meat Sauce"
    @typical_time = "Lunch"
    @meal = Meal.new(@main_dish, @typical_time)
  end

  it "has a main dish" do
    @meal.main_dish.should == @main_dish
  end

  it "has a typical meal time" do
    @meal.typical_time.should == @typical_time
  end

  it "has a string representation" do
    @meal.to_s.should == "Main Dish: #{@main_dish}, Typical Time: #{@typical_time}"
  end
end
