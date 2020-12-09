print "Digite o seu nome: "
nome = gets.chomp

print "Digite a sua idade: "
idade = gets.chomp.to_i

puts "Seja bem-vindo #{nome}, sua idade é #{idade} ano#{idade > 1 ? 's' : '' }"