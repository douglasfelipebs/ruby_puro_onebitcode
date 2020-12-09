module Person
    class Juridic
        def initialize(name, cnpj)
            @name = name
            @cnpj = cnpj
        end

        def add 
            puts 'Pessoa Jurídica Adicionada'
            puts "Nome: #{@name}"
            puts "CNPJ: #{@cnpj}"
        end
    end

    class Physical
        def initialize(name, cpf)
            @name = name
            @cpf = cpf
        end

        def add 
            puts 'Pessoa Física Adicionada'
            puts "Nome: #{@name}"
            puts "CPF: #{@cpf}"
        end
    end
end

Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
Person::Physical.new('Douglas Felipe Bussmann Siedschlag', '060.795.419').add
