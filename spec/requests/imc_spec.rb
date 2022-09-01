require 'jwt'
require 'rails_helper'

RSpec.describe 'Imc', type: :request do
  subject do
    payload = '1234567890'
    @token = JWT.encode payload, nil, 'none'
    Token.create(token: payload)
  end

  it 'should not be valid without an authorization token' do
    subject
    post imc_path, params: { weight: 80, height: 1.80 }
    expect(response.body).to include('Invalid token')
  end

  it 'should respond as Unauthorized with an invalid token' do
    invalid_token = JWT.encode '12345', nil, 'none'
    subject
    post imc_path, headers: { 'Authorization' => invalid_token.to_s }, params: { weight: 80, height: 1.80 }
    expect(response.body).to include('Unauthorized')
  end

  it 'should response a json with the imc and Peso normal category' do
    subject
    post imc_path, headers: { 'Authorization' => @token.to_s }, params: { weight: 80, height: 1.80 }
    expect(response).to have_http_status(:ok)
    expect(response.body).to include('24.69')
    expect(response.body).to include('Peso normal')
  end

  it 'should response a json with the imc and obesity category' do
    subject
    post imc_path, headers: { 'Authorization' => @token.to_s }, params: { weight: 100, height: 1.70 }
    expect(response).to have_http_status(:ok)
    expect(response.body).to include('34.6')
    expect(response.body).to include('Obesidade')
    expect(response.body).to include('I')
    expect(response.body).to_not include('II')
  end

  it 'should response a json with the imc and Peso normal category' do
    subject
    post imc_path, headers: { 'Authorization' => @token.to_s }, params: { weight: 80, height: 1.80 }
    expect(response).to have_http_status(:ok)
    expect(response.body).to include('24.69')
    expect(response.body).to include('Peso normal')
  end
end
