class Restaurant < ActiveRecord::Base
  has_many :menu_items
  has_many :dishes, through: :menu_items
end
