class Usuario < ApplicationRecord
    validates :nombre, presence: true, length: {minimum: 4}
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/}
    validates :correo, presence: true, uniqueness: true
    validates :contraseña, presence: true, length: { in: 8..20 }, format: { with: /\A[a-zA-Z0-9!@#$%^&*]+\z/}
    validates :roll, presence: true
end
