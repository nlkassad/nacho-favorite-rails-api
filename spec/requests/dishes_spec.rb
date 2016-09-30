require 'rails_helper'

RSpec.describe 'Authentication API' do
  describe 'GET /dishes' do
    it 'lists all dishes' do
      get '/dishes'

      expect(response).to be_success

      dishes_response = JSON.parse(response.body)
      expect(dishes_response.length).to eq(dishes.count)
      expect(dishes_response.first['title']).to eq(dish[:title])
    end
  end
end
