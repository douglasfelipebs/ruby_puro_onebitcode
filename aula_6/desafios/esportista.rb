class Esportista 
    def competir
        puts "Participando de uma competição"
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts "Correndo atrás de uma bola"
    end
end

class Maratonista < Esportista
    def correr
        puts "Percorrendo o percurso"
    end
end

jogadorDeFutebol = JogadorDeFutebol.new
puts 'Jogador de futebol:'
jogadorDeFutebol.competir
jogadorDeFutebol.correr

maratonista = Maratonista.new
puts 'Maratonista:'
maratonista.competir
maratonista.correr