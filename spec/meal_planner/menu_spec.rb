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
  end

  it "switches a meal with one that is not already in the list"
  # switch(menu_day)

end
