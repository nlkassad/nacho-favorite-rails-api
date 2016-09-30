class Dish < ActiveRecord::Base
  has_many :menu_items
  has_many :restaurants, through: :menu_items
  has_many :reviews, through: :menu_items
end
