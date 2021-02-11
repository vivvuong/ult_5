class Product < ApplicationRecord
    belongs_to :category

    validates :title, :stock_quantity, :price,  presence: true
    validates :stock_quantity, numericality: { only_integer: true }
end
