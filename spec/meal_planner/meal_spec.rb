require 'meal_planner/meal'

describe Meal do
  before do
    @main_dish = "Rice and Meat Sauce"
    @meal = Meal.new(@main_dish)
  end

  it "has a main dish" do
    @meal.main_dish.should == @main_dish
  end

  it "has a string representation" do
    @meal.to_s.should == "Main Dish: #{@main_dish}"
  end

  context "suggested sides have been added" do
    before do
      @main_dish = "Hashed Browns"
      @meal = Meal.new(@main_dish)

      @side1 = "Bacon"
      @side2 = "Salsa"
      @meal.add_side(@side1)
      @meal.add_side(@side2)
    end

    it "returns each side" do

      expected_sides = [@side1, @side2]
      sides = []

      @meal.each_side do |side|
        sides << side
      end

      sides.should == expected_sides
    end

    it "lists sides in string representation"

  end
end
