class ClientesController < ApplicationController
  def index
    @clientes = Cliente.all
  end

  def show
    @cliente = Cliente.find(params[:id])
  end

  def new
    @cliente = Cliente.new
  end

  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
        redirect_to clientes_path
    else
        render :new, status: :unprocessable_entity
    end
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def update
    @cliente = Cliente.find(params[:id])

    if @cliente.update(cliente_params)
        redirect_to @cliente
    else
        render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy

    redirect_to clientes_path, status: :see_other
  end

  private

  def cliente_params
    params.require(:cliente).permit(:nombre, :telefono, :contraseña)
  end
end
