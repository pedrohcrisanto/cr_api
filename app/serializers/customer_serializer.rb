class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :descount
  has_many :carts
  def name
    object.name.split.each{|i| i.capitalize!}.join(' ')
  end

end
