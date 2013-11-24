require 'meal_planner/menu.rb'

describe Menu do
  before do
    @days = [
      MenuDay.new(
        Date.new(2013,11,21),
        nil,
        Meal.new("Bacon and Eggs"),
        Meal.new("Chicken and Rice")
      ),
      MenuDay.new(
        Date.new(2013,11,22),
        nil,
        Meal.new("Leftovers"),
        Meal.new("Shrimp Wraps")
      )
    ]

    @menu = Menu.new(2)
  end

  it "has a list of menu days" do
    @menu.days.should == @days
  end

  it "switches a meal with one that is not already in the list"
  # switch(menu_day)

end
