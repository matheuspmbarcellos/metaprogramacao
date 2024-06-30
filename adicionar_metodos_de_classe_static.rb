class MyClass
    def self.metodo_de_classe
        puts "Eu sou um método de classe"
    end
end

MyClass.metodo_de_classe # Eu sou um método de classe


def MyClass.metodo_dinamico
    puts "Estou em um método dinamico"
end

MyClass.metodo_dinamico # Eu sou um método dinamico


class MyClass
    def self.metodo_dinamico2
        puts "Estou em um método dinamico2"
    end
end

MyClass.metodo_dinamico2 # Eu sou um método dinamico2

class MyClass
    class << self
        def outro_metodo_de_classe
            puts "Eu sou outro método de classe"
        end
    end
    class << self
        def outro_metodo_de_classe2
            puts "Eu sou outro método de classe2"
        end
    end
end


puts MyClass.methods - Class.methods