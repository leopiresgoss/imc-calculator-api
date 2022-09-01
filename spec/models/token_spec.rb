require 'rails_helper'

RSpec.describe Token, type: :model do
  it 'should not be valid without a token' do
    token = Token.new
    expect(token).to_not be_valid
  end
end
