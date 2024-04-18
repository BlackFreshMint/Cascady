class User < ApplicationRecord

  has_one :cart  # One user has one cart
  has_many :cart_items, through: :cart  # Access cart items through cart

  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}

end
#email:string
# password_digest:string

# password:string virtual
# password_confirmation:string virtual
