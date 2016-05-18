class QuickUnion

  attr_accessor :id

  def initialize(n)
    self.id = Array.new(n){|index| index}
  end

  def connected?(p, q)
    root(p) == root(q)
  end

  def union(p,q)
    self.id[root(p)] = self.id[root(q)]
  end

  private
  
  def root(i)
    while i != self.id[i] do
      i = self.id[i]
    end
    i
  end

end
