require_relative 'meal'

class MenuDay
  attr_reader :date
  attr_accessor :breakfast, :lunch, :dinner

  def initialize(date, lunch=nil, dinner=nil)
    @date = date
    @lunch = lunch
    @dinner = dinner
  end

  def each_meal
    if block_given?
      yield @lunch
      yield @dinner
    end
  end

  def to_s
    "\nPlan for #{@date}\nLunch is: #{@lunch}\nDinner is: #{@dinner}"
  end
end
