class CreateClientes < ActiveRecord::Migration[7.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :correo
      t.string :contraseña
      t.text :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
