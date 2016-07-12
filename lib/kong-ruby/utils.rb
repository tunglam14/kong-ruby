module Kong
  module Utils
    def resources(*resources)
      resources.each do |r|
        resource_name = "Kong::#{r.capitalize}"
        resource_class = Object.const_get resource_name
        instance_variable_set("@#{r}", resource_class.new)
      end
      self.class.instance_eval { attr_reader *resources }
    end
  end
end
