require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "POST #create" do
    
    context "with valid attributes" do

      it "creates a new user" do
        params = FactoryGirl.attributes_for(:user)
        expect{post :create, params: { user: params }}.to change(User, :count).by 1
      end

      it "redirects new user to root" do
        params = FactoryGirl.attributes_for(:user)
        post :create, params: { user: params }
        expect(response).to redirect_to(root_path)
      end

    end

    context "with invalid attributes" do
      it "should not create inavlid user" do
        params = FactoryGirl.attributes_for(:invalid_user)
        expect{post :create, params: { user: params }}.to change(User, :count).by 0
      end

    end

  end

end
