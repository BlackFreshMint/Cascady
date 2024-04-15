class Producto < ApplicationRecord
    has_one_attached :foto
    validates :nombre, presence: true
    validates :precio, presence: true
    validates :descripcion, presence: true
    validates :promocion, presence: true
    validates :tipo, presence: true
    attribute :img
end