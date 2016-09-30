class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :dish_id, :restaurant_id
  has_one :restaurant
  has_one :dish
end
