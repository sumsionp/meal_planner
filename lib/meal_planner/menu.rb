MenuDay = Struct.new(:date, :breakfast, :lunch, :dinner)

class Menu
  def initialize(number_of_days)
    @number_of_days = number_of_days
    @start_date = Date.new
  end
end
