class HomeController < ApplicationController
  def index
  end
  
  def list_products
    @productos = Producto.all
  end
end
