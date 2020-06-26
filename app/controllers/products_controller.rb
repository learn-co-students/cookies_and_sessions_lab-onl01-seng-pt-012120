class ProductsController < ApplicationController

    def index
        session[:cart]
    end

    def add
        if params[:product] != nil && params[:product] != ""
            cart = session[:cart] || []
            cart << params[:product]
            session[:cart] = cart
        end
        redirect_to "/products/index"
    end

end
