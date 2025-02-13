class CartsController < ApplicationController
    def add_to_cart
        product_id = params[:product_id]
        session[:cart] ||= {} # Inicializa o carrinho na sessão, se não existir
        session[:cart][product_id] ||= 0
        session[:cart][product_id] += 1
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
