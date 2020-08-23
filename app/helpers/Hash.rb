class Hash

  def insert(key, pair, proximity=:before)
    raise ArgumentError, "Key can not be found" unless self.key?(key)
    raise ArgumentError, "Insert argument must be a Hash" unless pair.kind_of?(Hash)
    raise ArgumentError, "Proximity argument must be a Symbol" unless proximity.kind_of?(Symbol)
    raise ArgumentError, "Position must be either :before or :after" unless [:before, :after].include?(proximity)
    self.to_a.insert(self.keys.index(key) + (proximity==:after ? 1 : 0), pair.first).to_h
  end

end
