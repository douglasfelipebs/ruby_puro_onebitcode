hash = {}

qtde = 0;
loop do
    if qtde == 3
        break;
    end
    qtde += 1

    print "Insira a chave Nº #{qtde}: "
    key = gets.chomp
    print "Insira o valor Nº #{qtde}: "
    value = gets.chomp

    hash[key] = value
end

hash.each do |key, value|
    puts "UMA DAS CHAVES É #{key} E O SEU VALOR É #{value}"
end