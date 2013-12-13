require 'meal_planner/menu_day'

describe MenuDay do

  before do
    @date = Date.new(2013, 10, 21)
    @lunch = Meal.new("Sandwiches")
    @dinner = Meal.new("Spaghetti")

    @meals = { :lunch => @lunch, :dinner => @dinner }

    @lunch2 = Meal.new("Leftovers")
    @dinner2 = Meal.new("Chicken and Rice")
    
    @meals2 = { :lunch => @lunch2, :dinner => @dinner2 }

    @menu_day = MenuDay.new(@date)
  end

  it "has a date" do
    @menu_day.date.should == @date
  end

  it "has a hash of meals" do

    @menu_day.add_meal(:lunch, @lunch)
    @menu_day.add_meal(:dinner, @dinner)

    expected_meals = {}

    @menu_day.each_meal do |time, meal|
      expected_meals[time] = meal
    end

    expected_meals.should == @meals
  end

  it "substitutes meals with new meals" do
    @menu_day.switch_meal(:lunch, @lunch2)
    @menu_day.switch_meal(:dinner, @dinner2)

    expected_meals = {}

    @menu_day.each_meal do |time, meal|
      expected_meals[time] = meal
    end

    expected_meals.should == @meals2
  end

end
