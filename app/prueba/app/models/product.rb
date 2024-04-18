class Product < ApplicationRecord
  has_many :cart_items  # One product can be in many cart items
  validates :name, :precio, :category, presence: true  # Basic validations
end
