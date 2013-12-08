require 'date'

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
      planned_meals = []

      each_menu_day do |menu_day|
        menu_day.each_meal do |meal|
          planned_meals << meal
        end
      end
    end
  end

  def add_unplanned_meal(meal)
    @unplanned_meals << meal
  end

  def plan(meals)
    @unplanned_meals = meals
  end

end
