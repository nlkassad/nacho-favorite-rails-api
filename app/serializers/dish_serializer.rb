class DishSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :reviews, through: :menu_items
end
