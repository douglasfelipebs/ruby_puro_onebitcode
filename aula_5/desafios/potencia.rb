def potencia(base, expoente)
    base**expoente
end

print "Informe a base da potência: "
base = gets.chomp.to_i

print "Informe o expoênte da potência: "
expoente = gets.chomp.to_i

puts "O resultado da operação #{base}^#{expoente} é #{potencia(base, expoente)}"
