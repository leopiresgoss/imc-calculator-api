class ImcController < ActionController::API
  def calculate
    height = params[:height].to_f
    weight = params[:weight].to_f
    render json: { status: 200, message: "height: #{height}, weight: #{weight}" }
  end
end