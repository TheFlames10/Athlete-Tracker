class ApplicationController < ActionController::API
  # This method will run before each controller action to verify JWT token
  def authenticate_user!
    token = request.headers['Authorization']
    if token
      decoded_token = decode_token(token)
      if decoded_token
        @current_user = User.find(decoded_token[:user_id])
      else
        render json: { error: 'Invalid token' }, status: :unauthorized
      end
    else
      render json: { error: 'Token missing' }, status: :unauthorized
    end
  end

  private

  def decode_token(token)
    begin
      JWT.decode(token, Rails.application.secret_key_base)[0]
    rescue JWT::DecodeError
      nil
    end
  end
end
