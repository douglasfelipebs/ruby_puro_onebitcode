puts 'Digite o número do mês em que você nasceu'

month = gets.chomp.to_i

case month
when 1..3
    puts 'Você nasceu no verão'
when 4..6
    puts 'Você nasceu no outono'
when 7..9
    puts 'Você nasceu o inverno'
when 10..12
    puts 'Você nasceu na primavera'
else 
    puts 'Mês inválido'
end