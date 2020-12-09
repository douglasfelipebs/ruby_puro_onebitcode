require_relative 'translator'
require_relative 'methods'

translator = Translator.new
loop do
    puts ''
    puts '#' * 100
    puts ''
    puts 'Selecione a opção desejada'
    puts '1- Nova Tradução (Informe os idiomas de acordo com a lista de idiomas)'
    puts '2- Exibir lista de idiomas'
    puts '0- Sair'
    print 'Opção: '
    option = gets.chomp.to_i

    if option == 1
        print 'Informe o idioma da fraze original: '
        from = gets.chomp

        print 'Informe o idioma desejado: '
        to = gets.chomp

        print 'Informe a faze a traduzir: '
        phraze = gets.chomp
    end

    system 'clear'
    if option == 1
        result = translator.translate(from, to, phraze)
        puts "Sua fraze traduzida é:"
        puts result
    elsif option == 2
        get_languages_list
    elsif option == 0
        break
    else 
        result = "Opção inválida"
    end
end