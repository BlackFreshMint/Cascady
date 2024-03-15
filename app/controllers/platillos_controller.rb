class PlatillosController < ApplicationController
  def index
    @platillos = Platillo.all
  end

  def show
    @platillo = Platillo.find(params[:id])
  end

  def new
    @platillo = Platillo.new
  end

  def create
    @platillo = Platillo.new(platillo_params)

    if @platillo.save
        redirect_to platillos_path, notice: 'Se ha agregado un nuevo platillo'
    else
        render :new, status: :unprocessable_entity
    end
  end

  def edit
    @platillo = Platillo.find(params[:id])
  end

  def update
    @platillo = Platillo.find(params[:id])

    if @platillo.update(platillo_params)
        redirect_to @platillo
    else
        render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @platillo = Platillo.find(params[:id])
    @platillo.destroy

    redirect_to platillos_path, status: :see_other
  end

  private

  def platillo_params
    params.require(:platillo).permit(:nombre, :precio, :descripcion, :promocion, :tipo)
  end
end
