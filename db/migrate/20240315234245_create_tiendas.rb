class CreateTiendas < ActiveRecord::Migration[7.1]
  def change
    create_table :tiendas do |t|
      t.string :nombre
      t.text :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
