require 'meal_planner/array.rb'

module MealPlanner
  describe Array do

    before do
      @original = %w(why would I do that)
      @original_size = @original.size
      @sample_size = 2
    end

    it "samples from an array and removes the sample from original" do
      @sample = @original.sample!(@sample_size)
      @sample.size.should == @sample_size
      @original.size.should == @original_size - @sample_size
      @original.should_not include(@sample)
    end

    it "samples only one from the array" do
      sample = @original.sample!

      @original.should_not include(sample)
      sample.should be_an_instance_of String
    end

  end
end
