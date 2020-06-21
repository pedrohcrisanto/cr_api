class CartSerializer < ActiveModel::Serializer
  attributes :id, :customer_name, :total, :discount, :total_discount

  belongs_to :customer
  has_many :cart_items

  def customer_name
    Customer.find(self.object.customer_id).name.split.each{|i| i.capitalize!}.join(' ')
  end

  def total_discount
    self.object.total_discount
  end

  def discount
    case self.object.discount
    when 0
      discount = "0%"
    when 0.05
      discount = "5%"
    when 0.1
      discount = "10%"
    when 0.2
      discount = "20%"
    when 0.25
      discount = "25%"
    end
    discount
  end

  def total
    self.object.total
  end
end
