class MedicineSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :stock
end
