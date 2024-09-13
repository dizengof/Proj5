class CartController < ApplicationController
  def show
    @render_cart = false
  end

  def add
    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_item = @cart.items.find_by(product_id: @product.id)
    if current_item && quantity > 0
      current_item.update(quantity:)
    elsif quantity <= 0
      current_item.destroy
    else
      @cart.items.create(product: @product, quantity:)
    end
  end

  def remove
    Item.find_by(id: params[:id]).destroy
  end
end
