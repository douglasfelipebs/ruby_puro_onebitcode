hash = {0 => 'Zero', 1 => 'Um', 2 => 'Dois', 3 => 'tres'}

selection = hash.select do |key, value|
    key > 1
end

puts selection