require_relative 'meal'

class MenuDay
  attr_reader :date, :breakfast, :lunch, :dinner

  def initialize(date, breakfast=nil, lunch=nil, dinner=nil)
    @date = date
    @breakfast = breakfast
    @lunch = lunch
    @dinner = dinner
  end
end
