File.open('arquivo.txt', 'w') do |arquivo|
    for i in (1..3) do
        arquivo.puts 'Olá, Mundo!'
    end
end  

File.readlines('arquivo.txt').each do |linha|
    puts linha
end