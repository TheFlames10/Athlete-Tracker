class Api::V1::AuthController < ApplicationController
  # POST /api/v1/auth/login
  def login
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])  # Assuming you're using has_secure_password
      token = encode_token(user.id)
      render json: { token: token, user: user }, status: :ok
    else
      render json: { error: 'Invalid credentials' }, status: :unauthorized
    end
  end

  private

  # Helper method to generate JWT token
  def encode_token(user_id)
    JWT.encode({ user_id: user_id, exp: 24.hours.from_now.to_i }, Rails.application.secret_key_base)
  end
end
