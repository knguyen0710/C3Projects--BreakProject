class UsersController < ApplicationController
  include ActionView::Helpers::OutputSafetyHelper

  def signin; end
#
  # def new
    # @user = User.new
    # render :new
  # end
#
  # def create
    # @user = User.create(user_params)
    # if @user.save
      # flash[:success] = "Registration successfully completed"
#
      # redirect_to root_path
    # else
      # flash.now[:errors] = "Registration invalid"
#
      # redirect_to register_path
    # end
  # end
#
# private
#
  # def user_params
    # params.require(:user).permit(:name, :email, :relationship, :password, :password_confirmation)
  # end
end
