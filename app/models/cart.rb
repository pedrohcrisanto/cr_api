class Cart < ApplicationRecord
  belongs_to :customer
  has_many :cart_items

  def total
    cart_items = self.cart_items
    total = 0
    cart_items.each do |cart_item|
      medicine = Medicine.find(cart_item.medicine_id)
      total += cart_item.quantity * medicine.value
    end
    return total
  end
end
