class CartSerializer < ActiveModel::Serializer
  attributes :id, :customer_name, :total, :total_discount

  belongs_to :customer
  has_many :cart_items

  def customer_name
    Customer.find(self.object.customer_id).name.split.each{|i| i.capitalize!}.join(' ')
  end
  def total_discount
    self.object.discount
  end
  def total
    self.object.total
  end
end
