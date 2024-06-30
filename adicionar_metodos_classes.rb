class Dog
    def initialize(name)
      @name = name
    end
  
    # Método de instância
    def bark
      puts "Woof! I'm #{@name}"
    end
  
    # Método de classe
    def self.create_multiple(names)
      names.map { |name| new(name) }
    end
  end
  
  dogs = Dog.create_multiple(["Fido", "Rex", "Buddy"])
  dogs.each(&:bark) # Equivalente => dogs.each { |dog| dog.bark }

  # OR

  class Dog
    def initialize(name)
      @name = name
    end
  
    class << self
      def create_multiple(names)
        names.map { |name| new(name) }
      end
    end
  end
  
  dogs = Dog.create_multiple(["Buddy", "Rex", "Fido"])
  dogs.each(&:bark)
  # Output:
  # Woof! I'm Fido
  # Woof! I'm Rex
  # Woof! I'm Buddy