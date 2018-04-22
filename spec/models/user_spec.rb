require 'rails_helper'

RSpec.describe User, type: :model do
  it "is a valid user" do
    user = User.new(name: 'prashant', email:'prashantkn94@gmail.com',
  		            password:'123456', password_confirmation:'123456')
    expect(user).to be_valid
   end

   it "is not a valid user do" do
     user = User.new(name: 'prashant', email:'prashantkn94@gmail.com',
  		            password:'1234', password_confirmation:'1234')
   	 expect(user).not_to be_valid

   	 user = User.new(name:'password', email:'prashantkn94@@gmail.com',
   	 	            password:'123456', password_confirmation:'123456')
   	 expect(user).not_to be_valid

   	 user = User.new(name:'  ', email:'prashantkn94@gmail.com',
   	 	            password:'123456', password_confirmation:'123456')
   	 expect(user).not_to be_valid
   end

   it "does not allow multiple users with same email" do
     user1 = User.create(name: 'prashant', email:'prashantkn94@gmail.com',
  		            password:'123456', password_confirmation:'123456')
     user2 = User.new(name: 'tarun', email: 'prashantkn94@gmail.com',
     	            password:'password', password_confirmation:'password')
     expect(user2).not_to be_valid
   end
end
