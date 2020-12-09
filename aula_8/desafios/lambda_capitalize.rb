def capitalize_name(lambda)
    lambda.call('douglas')
    lambda.call('felipe')
end

my_lambda = lambda { |name| puts name.capitalize() }

capitalize_name(my_lambda)