class AuthenticationController < ApplicationController
  skip_before_action :authenticate_api_request

  def authenticate
    user = User.find_by(email: params[:email])

    auth = AuthenticateUser.call(params[:email], params[:password])

    if auth.success?
      render json: { auth_token: auth.result, user: user }
    else
      render json: { error: auth.errors.full_messages }, status: :unauthorized
    end
  end
end