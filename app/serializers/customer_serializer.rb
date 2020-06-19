class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :carts
  def attributes(*args)
    h = super(*args)
    h[:name] = object.name.capitalize
    h
  end
end
