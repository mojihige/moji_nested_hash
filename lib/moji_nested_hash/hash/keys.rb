class Hash
  def nested_key?(key)
    nested_keys.include? key
  end

  def nested_keys
    flat_map do |k, v|
      [k] + (v.respond_to?(:nested_keys) ? v.nested_keys : [])
    end
  end
end