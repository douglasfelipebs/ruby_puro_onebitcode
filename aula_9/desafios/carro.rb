class Carro
    def get_km(fraze)
        puts find_km(fraze)
    end

    private

    def find_km(fraze)
        /80km\/h/.match(fraze)
    end
end

carro = Carro.new
carro.get_km("Um fusca de cor amarela viaja a 80km/h")
