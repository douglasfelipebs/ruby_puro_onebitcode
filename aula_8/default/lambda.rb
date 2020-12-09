# 1º Exemplo
# first_lambda = lambda { puts "my first lambda " }
# first_lambda.call

# 2º Exemplo
# first_lambda = -> { puts "my first lambda " }
# first_lambda.call

# 3º Exemplo
# first_lambda = -> (names){  names.each { |name| puts name } }
# names = ["Douglas", "Felipe", "Bussmann", "Siedschlag"]
# first_lambda.call(names)

# 4º Exemplo
# my_lambda = lambda do |numbers|
#     index = 0
#     puts "Número atual + Próximo número"
#     numbers.each do |number|
#         return if numbers[index] == numbers.last
#         puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
#         puts numbers[index] + numbers[index + 1]
#         index += 1
#     end
# end

# numbers = [1,2,3,4]
# my_lambda.call(numbers)

# numbers2 = [2,4,6,8]
# my_lambda.call(numbers2)

# 5º Exemplo
def foo(first_lambda, second_lambda)
    first_lambda.call
    second_lambda.call
end

first_lambda = lambda { puts "First Lambda" }
second_lambda = lambda { puts "Second Lambda" }

foo(first_lambda, second_lambda)
