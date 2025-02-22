class CartsController < ApplicationController
    before_action :authenticate_user!, only: [:add_to_cart]
    
    def add_to_cart
        product_id = params[:product_id]
        session[:cart] ||= {}
        session[:cart][product_id] = session[:cart][product_id].to_i
        redirect_to products_path, notice: "Produto adicionado ao carrinho!"
      end

      def index
        require 'mercadopago.rb'
        $mp = MercadoPago.new('APP_USR-264832ea-6199-45e0-bf69-bb1deb8c9527')
        preference_data = {
            "items": [
                {
                    "title": "Product 1",  
                    "unit_price": 100, 
                    "quantity": 1
                } 
            ]
        }
        preference = $mp.create_preference(preference_data)   
        @preference_id = preference["response"]["id"]
    end 
end
