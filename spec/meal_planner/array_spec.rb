require 'meal_planner/array.rb'

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
  end

  it "samples only one from the array" do
    sample = @original.sample!
    
    sample.size.should == 1
    @original.size.should == @original_size - 1
  end

end
