array = [1,2,3,4]

puts "\n Executando .map multiplicando cada item por 2"

dobro = array.map do |a|
    a * 2
end

puts "\n Array Original"
puts " #{array}"

puts "\n Array Dobrado"
puts " #{dobro}"

puts "\n Executando .map! multiplicando cada item por 2"

dobro = array.map! do |a|
    a * 2
end

puts "\n Array Original"
puts " #{array}"

puts "\n Array Dobrado"
puts " #{dobro}"