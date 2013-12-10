require 'meal_planner/menu.rb'
require 'timecop'
require 'date'

describe Menu do
  before do
    Timecop.freeze(Date.new(2013, 7, 24))
    @number_of_days = 2
    @menu = Menu.new(@number_of_days)
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

  context "meals have been planned" do

    before do
      Timecop.freeze(Date.new(2013, 7, 24))
      @number_of_days = 2
      @menu = Menu.new(@number_of_days)

      @meals = [
        Meal.new("Chicken and Rice"),
        Meal.new("Sausage and Saurkraut"),
        Meal.new("Steak, potatoes, and gravy"),
        Meal.new("Hot tortilla sandwiches"),
        Meal.new("Chicken Soup"),
        Meal.new("Leftover Roast Soup")
      ]

      @menu.plan(@meals)
    end

    it "has planned meals" do

      planned_meals = []
      @menu.each_planned_meal do |meal|
        meal.should_not be_nil
        planned_meals << meal
      end

      planned_meals.length.should == @number_of_days * 2

    end

    it "switches the places of two planned meals"

    it "switches a meal with another not yet on the menu" do
      planned_meals = []
      @menu.each_planned_meal do |meal|
        planned_meals << meal
      end
      
      switch_meal = planned_meals[1]

      @menu.switch(switch_meal)

      planned_meals = []
      @menu.each_planned_meal do |meal|
        planned_meals << meal
      end

      planned_meals.size.should == 4
      planned_meals.should_not include(switch_meal)

    end

  end

end
