# 1º Exemplo 
# 5.times { puts 'Exec the block' }

# 2º Exemplo
# sum = 0
# numbers = [5, 10, 15]
# numbers.each { |number| sum += number }
# puts sum

# 3º Exemplo
# foo = { 2 => 3, 4 => 5 }

# foo.each do |key, value|
#     puts "key = #{key}"
#     puts "value = #{value}"
#     puts "key * value #{key * value}"
#     puts "----"
# end

# 4º Exemplo
# def foo
#     if block_given?
#         yield
#     else 
#         puts 'Sem parâmetro'
#     end
# end

# foo { puts 'exec the block' } 
# foo
# foo do
#     puts 'exec do end'
# end

# 5º Exemplo
# def foo(name, &block)
#     @name = name
#     block.call
# end

# foo('Douglas') { puts "Hello #{@name}" }

# 6º Exemplo
def foo(numbers, &block)
    if block_given?
        numbers.each do |key, value|
            block.call(key, value)
        end
    end
end

numbers = { 2 => 2, 3 => 3, 4 => 4 }

foo(numbers) do |key, value|
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
    puts "---"
end