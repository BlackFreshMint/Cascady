class CreateUsuarios < ActiveRecord::Migration[7.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :correo
      t.string :contraseña
      t.string :roll

      t.timestamps
    end
  end
end
