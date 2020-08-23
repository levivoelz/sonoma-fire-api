class AttributeSetter

  # Set the attributes of an activerecord model
  def self.set(object:, attributes:, disallowed:[])

    # Return false if wrong data types
    return false if !attributes.kind_of?(Hash)
    return false if !disallowed.kind_of?(Array)

    # Remove disallowed attributes
    always_disallowed = [:id, :created_at, :updated_at]
    attributes = attributes.reject{|k,v| always_disallowed.concat(disallowed).include?(k.to_sym)}

    # Set object attributes
    object.attributes = attributes.reject{|k,v| !object.attributes.keys.member?(k.to_s)}

    # Return
    return object

  end

end
