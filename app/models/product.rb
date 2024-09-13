class Product < ApplicationRecord
    belongs_to :producer
    has_and_belongs_to_many :categories
    has_many :items
    has_many :carts, through: :items


end
