class UsersController < ApplicationController
  skip_before_action :authenticate_api_request, :raise => false

  def create
    @user = User.create!(user_params)
    if @user.valid?
      auth_token = AuthenticateUser.new(@user.email, @user.password).call
      render json: { user: {
        email: @user.email,
        first_name: @user.first_name,
        last_name: @user.last_name,
        phone_number: @user.phone_number
      }, auth_token: auth_token }
    else
      render json: {
        error: @user.errors.full_messages
      }, status: :unauthorized
    end
  end

  private
  
  def user_params
    params.permit(:email, :password, :first_name, :last_name, :phone_number, :bio)
  end
end