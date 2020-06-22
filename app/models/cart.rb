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

  def total_discount
      case self.cart_items.map(&:medicine_id).uniq.size
      when 1
        total_discount = self.total
      when 2
        total_discount = self.total - (self.total * 0.05)
      when 3
        total_discount = self.total - (self.total * 0.1)
      when 4
        total_discount = self.total - (self.total * 0.2)
      else
        total_discount = self.total - (self.total * 0.25)
      end
      total_discount
  end

  def discount
    case self.cart_items.map(&:medicine_id).uniq.size
    when 1
      discount = 0
    when 2
      discount = 0.05
    when 3
      discount = 0.1
    when 4
      discount = 0.2
    else
      discount = 0.25
    end
    discount
  end
end
