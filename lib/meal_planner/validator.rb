module Validator
  def self.validate(match)
    if block_given?
      value = yield
      until (value =~ match)
        value = yield
      end
      value
    end
  end
end
