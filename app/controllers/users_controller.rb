# class UsersController < ApplicationController
#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(params[user_strong_params])
#     @user.save
#   end

#   def user_strong_params
#   params.require(:user).permit(:first_name, :last_name, :email, :password)
#   end
# end
