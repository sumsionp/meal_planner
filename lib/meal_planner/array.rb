class Array
  def sample!(n=1)
    sample = self.sample(n)
    self.replace(self - sample)
    sample
  end
end
