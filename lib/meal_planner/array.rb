class Array
  def sample!(n=nil)
    if n
      sample = self.sample(n)
      self.replace(self - sample)
    else
      sample = self.sample
      self.delete(sample)
    end
    sample
  end
end
