require 'meal_planner/menu.rb'
require 'timecop'
require 'date'

describe Menu do
  before do
    Timecop.freeze(Date.new(2013, 7, 24))
    @menu = Menu.new(2)
  end

  it "returns each menu day" do
    test_dates = [Date.new(2013, 7, 24), Date.new(2013, 7, 25)]
    expected_dates = []

    @menu.each_menu_day do |menu_day|
      expected_dates << menu_day.date
    end

    expected_dates.should == test_dates
  end

  it "returns each planned meal" do
    expected_meals = []

    @menu.each_planned_meal do |planned_meal|
      expected_meals << planned_meal
    end

    expected_meals.should == []
  end

  it "has a list of unplanned meals" do
    @menu.unplanned_meals.should == []
  end

  it "adds an unplanned meal" do
    meal = Meal.new("Coconut Currie Soup")
    @menu.add_unplanned_meal(meal)
    @menu.unplanned_meals.should == [meal]
  end

end
