require 'meal_planner/menu_day'

describe MenuDay do

  before do
    @date = Date.new(2013, 10, 21)
    @lunch = Meal.new("Sandwiches")
    @dinner = Meal.new("Spaghetti")

    @lunch2 = Meal.new("Leftovers")
    @dinner2 = Meal.new("Chicken and Rice")

    @menu_day = MenuDay.new(@date, @lunch, @dinner)
  end

  it "has a date" do
    @menu_day.date.should == @date
  end

  it "has lunch, and dinner" do
    @menu_day.lunch.should == @lunch
    @menu_day.dinner.should == @dinner
  end

  it "allows lunch, and dinner to be changed" do
    @menu_day.lunch = @lunch2
    @menu_day.dinner = @dinner2


    @menu_day.lunch.should == @lunch2
    @menu_day.dinner.should == @dinner2
 end
end
