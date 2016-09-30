class Review < ActiveRecord::Base
  belongs_to :user, inverse_of: :reviews
  belongs_to :menu_item, inverse_of: :reviews
end
