result = ''

loop do
    if result != ''
        puts "O resultado é #{result}"
    end
    puts 'Selecione a operação desejada'
    puts '1- (+) Adição'
    puts '2- (-) Subtração'
    puts '3- (*) Multiplicação'
    puts '4- (/) Divisão'
    puts '0- Sair'
    print 'Opção: '
    option = gets.chomp.to_i

    if option != 0
        print 'Informe o primeiro número: '
        n1 = gets.chomp.to_i

        print 'Informe o segundo número: '
        n2 = gets.chomp.to_i
    end

    if option == 1
        result = n1 + n2
    elsif option == 2
        result = n1 - n2
    elsif option == 3
        result = n1 * n2
    elsif option == 4
        result = n1 / n2
    elsif option == 0
        break
    else 
        result = "Opção inválida"
    end
    system 'clear'
end