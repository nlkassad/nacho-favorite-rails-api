require 'rails_helper'

RSpec.describe 'Dishes API' do
  def user_params
    {
      email: 'alice@example.com',
      password: 'foobarbaz',
      password_confirmation: 'foobarbaz'
    }
  end

  def dish_params
    {
      name: 'Cheese Burger'
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
    User.delete_all
  end

  context 'when authenticated' do
    def headers
      {
        'HTTP_AUTHORIZATION' => "Token token=#{@token}"
      }
    end

    before(:each) do
      post '/sign-up', credentials: user_params
      post '/sign-in', credentials: user_params

      @token = JSON.parse(response.body)['user']['token']
      @user_id = JSON.parse(response.body)['user']['id']
    end

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

    # describe 'GET /users/:id' do
    #   it 'is successful' do
    #     get "/users/#{@user_id}", nil, headers
    #
    #     expect(response).to be_success
    #
    #     parsed_response = JSON.parse(response.body)
    #     expect(
    #       parsed_response['user']
    #     ).not_to be_empty
    #   end
    # end
  end

  context 'when not authenticated' do
    describe 'GET /dishes' do
      it 'is not successful' do
        get '/dishes'

        expect(response).not_to be_success
      end
    end

    # describe 'GET /users/:id' do
    #   it 'is not successful' do
    #     get "/users/#{@user_id}"
    #
    #     expect(response).not_to be_success
    #   end
    # end
  end
end
