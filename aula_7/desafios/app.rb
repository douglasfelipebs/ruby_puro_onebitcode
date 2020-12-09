require_relative 'produto'
require_relative 'mercado'

product = Product.new('Garrafa de água', 2.00)
market = Market.new(product)
market.buy