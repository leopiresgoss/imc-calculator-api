require 'jwt'

class ApplicationController < ActionController::API
  before_action :validate_request, :verify_token

  private

  def validate_request
    @token = request.authorization

    render json: { status: 401, message: 'Invalid token' } if @token.nil?
  end

  def verify_token
    decoded_token = JWT.decode @token, nil, false

    render json: { status: 401, message: 'Unauthorized' } unless Token.find_by(token: decoded_token[0].to_s)
  end
end
