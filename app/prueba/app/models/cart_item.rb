class CartItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  validates :quantity, presence: true, numericality: { greater_than: 0 }  # Validate quantity

  def total_price
    quantity * price  # Calculate total price for each item
  end
end
