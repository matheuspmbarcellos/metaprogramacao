class Dog
    def initialize(name)
      @name = name
    end
  end
  
  dog1 = Dog.new("Fido")
  
  # Adicionando um método à instância dog1
  def dog1.bark
    puts "Woof! I'm #{@name}"
  end
  
  dog1.bark