class String

  # Make string url safe
  def urlify
    output = self.downcase.gsub(" ", "-")
    output = output.downcase.gsub(/[^a-z0-9-]/, "")
    output = output.gsub("---", "-").gsub("--", "-")
    return output
  end

end
