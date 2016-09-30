class MenuItem < ActiveRecord::Base
  belongs_to :restaurant, inverse_of: :menu_items
  belongs_to :dish, inverse_of: :menu_items
end
