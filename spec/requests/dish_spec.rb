require 'rails_helper'

RSpec.describe 'Authentication API' do
  describe 'GET /dishes' do
    it 'is successful' do
      get '/dishes', nil, headers

      expect(response).to be_success

      parsed_response = JSON.parse(response.body)
      expect(
        parsed_response['dishes']
      ).not_to be_empty
    end
  end
end
