class HomeController < ApplicationController
  # http_basic_authenticate_with name: "cascady", password: "contraseña", except: [:index]

  def index
    @recurso = Recurso.find_by(title: "Logotipo")
    @url_logo = url_for(@recurso.imagen)
  end
  
  def list_products
    @productos = Producto.all
    @recurso = Recurso.find_by(title: "Logotipo")
    @url_logo = url_for(@recurso.imagen)
  end

  def registro
    @cliente = Cliente.new
    @recurso = Recurso.find_by(title: "Registro")
    @url_new = url_for(@recurso.imagen)
    @recurso = Recurso.find_by(title: "Logotipo")
    @url_logo = url_for(@recurso.imagen)
  end

  def create_registro
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
        redirect_to login_path
    else
        render :registro, status: :unprocessable_entity
    end
  end

  def pre_login
    @recurso = Recurso.find_by(title: "Pre_registro")
    @url_prelogin = url_for(@recurso.imagen)
    @recurso = Recurso.find_by(title: "Logotipo")
    @url_logo = url_for(@recurso.imagen)
  end

  def product_modal
  end

  def orden
  end

  def cliente_params
    params.require(:cliente).permit(:nombre, :telefono, :contraseña, :condiciones)
  end

end
