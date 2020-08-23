class BaseGen

  # Generate Key
  def self.key
    SecureRandom.hex(64)
  end

  # Transform string to Hash
  def self.hash(string)
    raise ArgumentError, 'Passed argument must be a string' unless string.kind_of?(String)
    Digest::SHA2.new(512).hexdigest(string)
  end

end
