require "cpf_cnpj"

def valida_cpf(cpf)
    CPF.valid?(cpf)
end

print "Informe o seu CPF (apenas números): "
cpf = gets.chomp

puts "O CPF #{cpf} é #{valida_cpf(cpf) ? 'válido' : 'inválido'}"