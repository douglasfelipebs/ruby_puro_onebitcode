array = []

qtde = 0;
loop do
    if qtde == 3
        break;
    end

    qtde += 1

    print "Insira um número no array: "
    array.push(gets.chomp.to_i)
end

puts "Para os números informados #{array}"

array.map! do |x|
    x**2
end

puts "Suas respectivas potênias são #{array}"
