module MyModule
    def self.included(base)
      puts "#{base} has included MyModule"
    end
  
    def self.extended(base)
      puts "#{base} has extended MyModule"
    end
  end
  
  class MyClass
    include MyModule  # Saída: MyClass has included MyModule
  end
  
  obj = Object.new
  obj.extend(MyModule)  # Saída: #<Object:0x00007f8a1c0b8a20> has extended MyModule
  