class TiendasController < ApplicationController
  def index
    @tiendas = Tienda.all
  end

  def show
    @tienda = Tienda.find(params[:id])
  end

  def new
    @tienda = Tienda.new
  end

  def create
    @tienda = Tienda.new(tienda_params)

    if @tienda.save
        redirect_to tiendas_path, notice: 'Se ha agregado un nuevo tienda'
    else
        render :new, status: :unprocessable_entity
    end
  end

  def edit
    @tienda = Tienda.find(params[:id])
  end

  def update
    @tienda = Tienda.find(params[:id])

    if @tienda.update(tienda_params)
        redirect_to @tienda
    else
        render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tienda = Tienda.find(params[:id])
    @tienda.destroy

    redirect_to tiendas_path, status: :see_other
  end

  private

  def tienda_params
    params.require(:tienda).permit(:nombre, :direccion, :telefono)
  end
end
