class CartsController < ApplicationController
    def add_to_cart
        product_id = params[:product]
        session[:cart] ||= {} # Inicializa o carrinho na sessão, se não existir
        session[:cart][product_id] ||= 0
        session[:cart][product_id] += 1
        redirect_to products_path, notice: "Produto adicionado ao carrinho!"
      end
end
