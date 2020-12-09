numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}

maior_value = 0
numbers.each do |key, value|
    if maior_value < value
        maior_value = value
    end
end

pair = numbers.select do |key, value| 
    value == maior_value
end

puts "O maior par é #{pair}"