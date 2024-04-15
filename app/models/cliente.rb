class Cliente < ApplicationRecord
    has_many :ubicacions

    validates :nombre, presence: true, length: {minimum: 4}
    validates :telefono, presence: true, length: {minimum: 10}, numericality: { only_integer: true }, uniqueness: true
    validates :contraseña, presence: true, length: { in: 8..20 }, format: { with: /\A[a-zA-Z0-9!@#$%^&*]+\z/}
    validates :condiciones, acceptance: true

    def authenticate(contraseña)
        # Lógica para verificar si la contraseña proporcionada coincide con la contraseña almacenada
        # en la base de datos para este cliente. Por ejemplo:
        self.contraseña == contraseña
    end
end