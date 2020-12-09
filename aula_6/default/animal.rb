class Animal
    def pular
        puts 'Toing! tóim! bóim! póim!'
    end

    def dormir
        puts 'zzzzzz!'
    end
end

class Cachorro < Animal
    def latir
        puts 'Au Au'
    end
end

class Gato < Animal
    def miar
        puts 'Meow'
    end
end

cachorro = Cachorro.new

cachorro.pular
cachorro.dormir
cachorro.latir
# cachorro.miar

gato = Gato.new
gato.pular
gato.dormir
# gato.latir
gato.miar