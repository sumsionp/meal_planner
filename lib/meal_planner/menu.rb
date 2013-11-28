require 'date'

class Menu

  attr_reader :days

  def initialize(number_of_days)
    @number_of_days = number_of_days
    @start_date = Time.new.to_date
  end
end
