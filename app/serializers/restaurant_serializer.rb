class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city
end
