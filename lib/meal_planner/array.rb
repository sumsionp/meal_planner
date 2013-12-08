class Array
  def sample!(n)
    sample = self.sample(n)
    self.replace(self - sample)
    sample
  end
end
