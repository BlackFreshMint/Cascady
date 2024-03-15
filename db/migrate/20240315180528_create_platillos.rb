class CreatePlatillos < ActiveRecord::Migration[7.1]
  def change
    create_table :platillos do |t|
      t.string :nombre
      t.float :precio
      t.text :descripcion
      t.float :promocion
      t.string :tipo

      t.timestamps
    end
  end
end
