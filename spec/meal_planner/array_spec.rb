require 'meal_planner/array.rb'

describe Array do

  before do
    @original = %w(why would I do that)
    @original_size = @original.size
    @sample_size = 2
    @sample = @original.sample!(@sample_size)
  end

  it "samples from an array and removes the sample from original" do
    @sample.size.should == @sample_size
    @original.size.should == @original_size - @sample_size
  end

end
