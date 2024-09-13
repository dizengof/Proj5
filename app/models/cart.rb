class Cart < ApplicationRecord
  has_many :items
  has_many :products, through: :items

  def total
    items.to_a.sum{ |item| item.total }
  end
end
