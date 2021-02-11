class Product < ApplicationRecord
    validates :title, :stock_quantity, presence: true
    validates :stock_quantity, numericality: { only_integer: true }
end
