class Instrumento
    def escrever
        puts 'Escrevendo'
    end
end

class Teclado < Instrumento
end

class Lapis < Instrumento
    def escrever
        puts 'Escrevendo à Lápis'
    end
end

class Caneta < Instrumento
    def escrever
        puts 'Escrevendo à Caneta'
    end
end

teclado = Teclado.new
teclado.escrever

lapis = Lapis.new
lapis.escrever

caneta = Caneta.new
caneta.escrever