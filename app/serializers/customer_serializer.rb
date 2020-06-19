class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name

  def attributes(*args)
    h = super(*args)
    h[:name] = object.name.capitalize
    h
  end
end
