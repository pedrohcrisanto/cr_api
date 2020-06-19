class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :client, :medicine_name, :quantity, :value, :total
  belongs_to :cart
  belongs_to :medicine
  def value
    Medicine.find(self.object.medicine_id).value
  end

  def medicine_name
    Medicine.find(self.object.medicine_id).name
  end

  def client
    Customer.find(self.object.cart.customer_id).name.capitalize
  end

  def total
    medicine = Medicine.find(self.object.medicine_id)
    total = self.object.quantity * medicine.value
  end
end
