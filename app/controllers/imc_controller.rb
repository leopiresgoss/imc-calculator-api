require './lib/imc'

class ImcController < ActionController::API
  before_action :set_data, only: [:calculate]

  def calculate
    result = IMC.new(@height, @weight).data
    render json: { status: 200, result: result }
  end

  private

  def set_data
    @height = params[:height]&.to_f
    @weight = params[:weight]&.to_f

    render json: { status: 406, message: 'You should provide height and weight' } if @height.nil? || @weight.nil?
  end
end
