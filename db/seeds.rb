# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "csv"


filename = Rails.root.join("db/products.csv")
puts "Loading in Products from: #{filename}."

csv_data = File.read(filename)

products = CSV.parse(csv_data, headers: true, encoding: "utf-8")


products.each do |p|
    category = Category.find_or_create_by(name: p["category"])

    if category.valid?
        product = category.products.create(
            title:              p["name"],
            description:        p["description"],
            price:              p["price"],
            stock_quantity:     p["stock quantity"]
        )

        puts "Invalid product #{m['name']}" unless product&.valid?
    else
        puts "Invalid category: #{p["category"]} for product #{p["name"]}"
    end
end

puts "Created #{Product.count} movies."
puts "Created #{Category.count} categories."

# old code using faker

# $i = 0
# $num = 676

# while $i < $num  do
#     product_new = Product.create(title: Faker::Commerce.product_name, stock_quantity: Faker::Number.between(from: 1, to: 10), price: Faker::Commerce.price)
#     $i +=1

#     if(product_new.valid?)
#         puts "Product added"
#     else
#         puts "Invalid product"
#     end

# end

# first product starts at index 2 becauise i deleted 
# the first product i put in and didn't reset the numbers. :(
# first_product = Product.first
# puts first_product.inspect




