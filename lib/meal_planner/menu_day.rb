require_relative 'meal'

class MenuDay
  attr_reader :date

  def initialize(date)
    @date = date
    @meals = {}
  end

  def add_meal(time, meal)
    @meals[time] = meal
  end

  def switch_meal(time, meal)
    add_meal(time, meal)
  end

  def each_meal
    if block_given?
      @meals.each do |time, meal|
        yield time, meal
      end
    end
  end

  def to_s
    "\nPlan for #{@date}\nLunch is: #{@lunch}\nDinner is: #{@dinner}"
  end
end
