frase = "Olá, tudo bem? Meu WhatsApp é (99) 74321-1234"
puts /\(\d{2}\) \d \d{4}-\d{4}/.match(frase)