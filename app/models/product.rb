class Product < ApplicationRecord
    validates :title, :stock_quantity, :price,  presence: true
    validates :stock_quantity, numericality: { only_integer: true }
end
