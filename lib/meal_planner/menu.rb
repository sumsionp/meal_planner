require 'date'
require_relative 'array'
require_relative 'menu_day'

class Menu

  attr_reader :days, :unplanned_meals

  def initialize(number_of_days)
    @number_of_days = number_of_days
    @start_date = Time.new.to_date
    @unplanned_meals = []
    @menu_days = []

    0.upto(@number_of_days - 1) do |i|
      @menu_days << MenuDay.new(@start_date + i)
    end
  end

  def each_menu_day
    if block_given?
      @menu_days.each { |menu_day| yield menu_day }
    end
  end

  def each_planned_meal
    if block_given?

      each_menu_day do |menu_day|
        menu_day.each_meal do |time, meal|
          unless meal.nil?
            yield meal
          end
        end
      end
    end
  end

  def add_unplanned_meal(meal)
    @unplanned_meals << meal
  end

  def plan(meals)
    @unplanned_meals = meals
    
    each_menu_day do |menu_day|
      menu_day.add_meal(:lunch, Meal.new("Leftovers from yesterday"))
      menu_day.add_meal(:dinner, @unplanned_meals.sample!)
    end
  end

  def switch(switch_meal)
    each_menu_day do |menu_day|
      menu_day.each_meal do |time, meal|
        if meal == switch_meal
          menu_day.switch_meal(time, @unplanned_meals.sample!)
        end
      end
    end
  end

end

if __FILE__ == $0
  require 'timecop'
  Timecop.freeze(Date.new(2013, 7, 24))
  @number_of_days = 2
  @menu = Menu.new(@number_of_days)

  meals = [
    Meal.new("Chicken and Rice"),
    Meal.new("Sausage and Saurkraut"),
    Meal.new("Steak, potatoes, and gravy"),
    Meal.new("Hot tortilla sandwiches"),
    Meal.new("Chicken Soup"),
    Meal.new("Leftover Roast Soup")
  ]

  puts "Available meals are #{meals}"

  @menu.plan(meals)

  planned_meals = []
  @menu.each_menu_day do |menu_day|
    planned_meals << menu_day.lunch
    planned_meals << menu_day.dinner
  end

  puts "Planned meals are #{planned_meals}"

end
