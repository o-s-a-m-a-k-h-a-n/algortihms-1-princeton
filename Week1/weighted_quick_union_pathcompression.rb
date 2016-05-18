class WeightedQuickUnionPathCompression

  attr_accessor :id, :size

  def initialize(n=10)
    self.id = Array.new(n){|index| index}
    self.size = Array.new(n, 1)
  end

  def connected?(p, q)
    root(p) == root(q)
  end

  def union(p,q)
    i = root(p)
    j = root(q)
    return if i==j
    if self.size[i] < self.size[j]
      self.id[i] = j;
      self.size[j] += size[i];
    else
      self.id[j] = i;
      self.size[i] += size[j];
    end
  end

  private
  def root(i)
    while i != self.id[i] do
      self.id[i] = self.id[self.id[i]]
      i = self.id[i]
    end
    i
  end

end
