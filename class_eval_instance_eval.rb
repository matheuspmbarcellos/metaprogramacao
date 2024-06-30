class MyClass
    @my_variable = 42
  
    def self.my_variable
      @my_variable
    end
  end
  
  MyClass.class_eval do
    def instance_method
      "class-eval - adiciona método de instância"
    end
  end
  
  MyClass.instance_eval do
    def class_method
      "instance-eval - adiciona método de classe"
    end
  end
  
  obj = MyClass.new
  puts obj.instance_method  # Saída: class-eval - adiciona método de instância
  puts MyClass.class_method # Saída: instance-eval - adiciona método de classe
  