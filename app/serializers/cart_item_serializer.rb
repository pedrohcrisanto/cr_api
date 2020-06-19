class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :medicine_id, :quantity, :cart_id, :total
  belongs_to :cart
  belongs_to :medicine

  def total
    medicine = Medicine.find(self.object.medicine_id)
    total = self.object.quantity * medicine.value
  end
end
