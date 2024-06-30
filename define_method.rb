class Pessoa
    [:falar, :gritar].each do |acao|
        define_method acao do
            if acao.to_s == "gritar"
                puts "olá mundo".upcase
            else
                puts "olá mundo"
            end
        end
    end
end

pessoa = Pessoa.new
pessoa.falar
pessoa.gritar

# Criando getter e setter dinamicamente

class DynamicAttributes
    [:name, :age, :email].each do |attribute|
      define_method(attribute) do
        instance_variable_get("@#{attribute}")
      end
  
      define_method("#{attribute}=") do |value|
        instance_variable_set("@#{attribute}", value)
      end
    end
  end
  
  obj = DynamicAttributes.new
  obj.name = "Matheus"
  obj.age = 30
  obj.email = "matheus@example.com"
  
  puts obj.name  # Saída: Matheus
  puts obj.age   # Saída: 30
  puts obj.email # Saída: matheus@example.com
  