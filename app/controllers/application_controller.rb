class ApplicationController < ActionController::Base
    before_action :check_auth
    before_action :set_render_cart
    before_action :initialize_cart


    def set_render_cart
      @render_cart = true
    end

    def initialize_cart
      @cart ||= Cart.find_by(id: session[:cart_id])

      if @cart.nil?
        @cart = Cart.create
        session[:cart_id] = @cart.id
      end
    end

    private
    def check_auth
        if session['user'].nil?
            redirect_to(controller: :welcome, action: :start)
            false
        else
            true
        end
    end
end
