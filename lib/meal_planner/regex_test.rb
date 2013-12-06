module RegexTest

  def self.test(regex, array)
    matched = true
    array.each do |i|
      unless i =~ regex
        matched = false
        break
      end
    end
    matched
  end

end
