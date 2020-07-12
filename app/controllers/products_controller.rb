class ProductsController < ApplicationController
    def index
        @cart = helpers.cart
    end

    def add
        helpers.cart << params[:product]
        @cart = helpers.cart 
        redirect_to root_path
    end
end
