class Cart < ApplicationRecord
  belongs_to :customer
  has_many :cart_items

  def total
    total = 0
    self.cart_items.each do |cart_item|
      total += cart_item.quantity * Medicine.find(cart_item.medicine_id).value
    end
    total
  end
end
