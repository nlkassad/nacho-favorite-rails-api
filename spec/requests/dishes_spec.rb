require 'rails_helper'

RSpec.describe 'Dishes API' do
  def dish_params
    {
      name: 'Nachos'
    }
  end

  def dishes
    Dish.all
  end

  def dish
    Dish.first
  end

  before(:all) do
    Dish.create!(dish_params)
  end

  after(:all) do
    Dish.delete_all
  end

  describe 'GET /dishes' do
    it 'lists all dishes' do
      get '/dishes', nil, headers

      expect(response).to be_success
      dishes_response = JSON.parse(response.body)
      expect(dishes_response['dishes']).not_to be_empty
    end
  end
end
