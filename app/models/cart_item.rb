class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :medicine

  after_save :set_stock

  def set_stock
    medicine = Medicine.find(self.medicine_id)
    new_stock = medicine.stock - self.quantity

    if new_stock >= 0
      medicine.update_columns(stock: new_stock)
    end
  end
end
