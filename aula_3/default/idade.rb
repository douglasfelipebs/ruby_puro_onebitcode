result = ''

loop do
    puts result
    puts 'Selecione uma das opções'
    puts '1- Descobrir a idade da pessoa'
    puts '0- Sair'
    print 'Opção: '

    option = gets.chomp.to_i

    if option == 1
        print 'Digite o ano de nascimento: '
        nasci = gets.chomp.to_i
        print 'Digite o ano atual: '
        atual = gets.chomp.to_i
        idade = atual - nasci
        result = "Quem nasceu em #{nasci}, terminará #{atual} com #{idade} anos"
    elsif option == 0
        break
    else 
        result = "Opção inválida"
    end
    system 'clear'
end