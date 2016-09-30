class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city
  has_many :reviews, through: :menu_items
end
