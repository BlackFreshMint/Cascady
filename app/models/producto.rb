class Producto < ApplicationRecord
    validates :nombre, presence: true
    validates :precio, presence: true
    validates :descripcion, presence: true
    validates :promocion, presence: true
    validates :tipo, presence: true
end