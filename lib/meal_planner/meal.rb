class Meal
  attr_reader :main_dish

  def initialize(main_dish)
    @main_dish = main_dish
    @sides = []
  end

  def add_side(side)
    @sides << side
  end

  def each_side
    if block_given?
      @sides.each do |side|
        yield side
      end
    end
  end

  def to_s
    string = "Main Dish: #{@main_dish}"
    each_side do |side|
      string += ", Side: #{side}"
    end
    string
  end
end
