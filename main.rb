require 'rexml/document'

require_relative 'product'
require_relative 'book'
require_relative 'disk'
require_relative 'movie'

total_price = 0

products = Product.read_from_xml('data/products.xml')

choice = nil

while choice != 'x'
  Product.showcase(products)

  choice = STDIN.gets.chomp

  if choice != 'x'
    product = products[choice.to_i]
    total_price += product.buy
  end
end

puts "Спасибо за покупки, с Вас #{total_price} руб."