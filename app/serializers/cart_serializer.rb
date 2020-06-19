class CartSerializer < ActiveModel::Serializer
  attributes :id, :customer_id

  belongs_to :customer
  has_many :cart_items
end
