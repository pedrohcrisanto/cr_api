class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :descount
  has_many :carts
  def name
    object.name.capitalize
  end

end
