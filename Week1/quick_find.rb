class QuickFind

  attr_accessor :id

  def initialize(n)
    self.id = Array.new(n){|index| index}
  end

  def connected?(p, q)
    self.id[p] == self.id[q]
  end

  def union(p,q)
    self.id.each_index do |index|
      id[index] = id[q] if id[index] == id[p]
    end
  end

end
