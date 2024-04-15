class ProductosController < ApplicationController
  def index
    @productos = Producto.all
  end

  def show
    @producto = Producto.find(params[:id])
  end

  def new
    @producto = Producto.new
  end

  def create
    @producto = Producto.new(producto_params)

    if @producto.save
      redirect_to productos_path
    else
        render :new, status: :unprocessable_entity
    end
  end

  def edit
    @producto = Producto.find(params[:id])
  end

  def update
    @producto = Producto.find(params[:id])

    if @producto.update(producto_params)
        redirect_to @producto
    else
        render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @producto = Producto.find(params[:id])
    @producto.destroy

    redirect_to productos_path, status: :see_other
  end

  private

  def producto_params
    params.require(:producto).permit(:nombre, :precio, :descripcion, :promocion, :tipo, :foto)
  end
end
