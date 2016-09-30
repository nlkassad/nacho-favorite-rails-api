class MenuItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :restaurant
  has_one :dish
end
