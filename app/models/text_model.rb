class TextModel
  def self.get_resource_name
    inflector = ActiveSupport::Inflector
    @resource_name ||= inflector.pluralize(inflector.underscore(self.name)).downcase
  end

  def self.method_missing(m, *args)
    resource_symbol = self.get_resource_name.to_sym
    data_symbol = m.to_sym

    if SUGGESTION_DATA[resource_symbol] && data = SUGGESTION_DATA[resource_symbol][data_symbol]
     data 
    else
      super(m, *args)
    end
  end
end
