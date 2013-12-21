require 'meal_planner/regex_test.rb'

module MealPlanner
  describe RegexTest do

    it "should match" do
      RegexTest.test(/[1-9]/, ('1'..'9').to_a).should be_true
    end

    it "shouldn't match" do
      RegexTest.test(/test/, ('a'..'z').to_a).should be_false
      RegexTest.test(/[1-9]/, (1..9).to_a).should be_false
    end

  end
end
