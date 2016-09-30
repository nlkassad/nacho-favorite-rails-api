class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :note
  has_one :user
  has_one :menu_item
end
