module AttributeAccessor
    def attr_accessor_with_history(*attrs)
      attrs.each do |attr|
        define_method("#{attr}_history") do
          instance_variable_get("@#{attr}_history") || []
        end
  
        define_method(attr) do
          instance_variable_get("@#{attr}")
        end
  
        define_method("#{attr}=") do |value|
          history = instance_variable_get("@#{attr}_history") || []
          history << value
          instance_variable_set("@#{attr}_history", history)
          instance_variable_set("@#{attr}", value)
        end
      end
    end
  end

class Person
    class_eval do
        extend AttributeAccessor
        attr_accessor_with_history :name, :age
    end
end

person = Person.new
person.name = "Matheus"
person.name = "Carlos"
person.age = 30
person.age = 31

puts person.name             # Saída: Carlos
puts person.age              # Saída: 31
puts person.name_history     # Saída: ["Matheus", "Carlos"]
puts person.age_history      # Saída: [30, 31]
