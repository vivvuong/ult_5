# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

$i = 0
$num = 676

while $i < $num  do
    product_new = Product.create(title: Faker::Commerce.product_name, stock_quantity: Faker::Number.between(from: 1, to: 10), price: Faker::Commerce.price)
    $i +=1

    if(product_new.valid?)
        puts "Product added"
    else
        puts "Invalid product"
    end

end

# first product starts at index 2 becauise i deleted 
# the first product i put in and didn't reset the numbers. :(
# first_product = Product.first
# puts first_product.inspect




