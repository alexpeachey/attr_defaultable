require "attr_defaultable/version"

module AttrDefaultable
  def attr_defaultable(att, default)
    define_method(att.to_sym) {
      instance_variable_get("@#{att}".to_sym) || instance_variable_set("@#{att}".to_sym, instance_exec(&default))
    }

    define_method("#{att}=".to_sym) { |val|
      instance_variable_set("@#{att}".to_sym, val)
    }
  end
end
