class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :precio
      t.float :promo
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
