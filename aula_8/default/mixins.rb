module ImpressaDecorada
    def imprimir text
        decoracao = '#' * 100
        puts decoracao
        puts text
        puts decoracao
    end
end

module Pernas
    include ImpressaDecorada

    def chute_frontal
        imprimir 'Chute Frontal'
    end
    
    def chute_lateral
        imprimir 'Chute Lateral'
    end
end

module Bracos
    include ImpressaDecorada

    def jab_de_direita
        imprimir 'Jab de direita'
    end
    
    def jab_de_esquerda
        imprimir 'Jab de esquerda'
    end

    def gancho
        imprimir 'Gancho'
    end
end

class LutadorX
    include Pernas
    include Bracos
end

class LutadorY
    include Pernas
end

lutadorx = LutadorX.new
lutadorx.chute_frontal
lutadorx.jab_de_direita

lutadory = LutadorY.new
lutadorx.chute_lateral