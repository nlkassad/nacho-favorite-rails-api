class MenuItem < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :dish
end
