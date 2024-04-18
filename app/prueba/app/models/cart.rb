class Cart < ApplicationRecord
  belongs_to :user  # One cart belongs to one user
  has_many :cart_items  # One cart can have many cart items

  def add_item(product_id)
    existing_item = cart_items.find_by(product_id: product_id)
    if existing_item
      existing_item.quantity += 1
      existing_item.save
    else
      cart_items.create(product_id: product_id, quantity: 1, price: Product.find(product_id).precio)  # Get price from product
    end
  end

  def remove_item(product_id)
    cart_items.find_by(product_id: product_id).destroy
  end

  def total_price
    cart_items.sum(&:total_price)  # Calculate total cart price from cart items
  end
end
