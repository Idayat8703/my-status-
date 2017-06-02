require 'rails_helper'

RSpec.describe "API::V1::Applications", type: :request do

  describe "authentication" do

    before(:each) do
      @user = create(:user)
      @application = @user.applications.create(company: Faker::Company.name)
      @token = Auth.create_token(@user.id)
      @token_headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': "Bearer: #{@token}"
      }
      @tokenless_headers = {
        'Content-Type': 'application/json',
      }
    end
