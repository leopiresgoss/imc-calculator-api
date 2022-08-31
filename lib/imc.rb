class IMC
  def initialize(height, weight)
    @imc = (weight / (height * height)).round(2)

    @classification = nil
    @obesity = nil

    classify
  end

  def data
    {
      imc: @imc,
      classification: @classification,
      obesity: @obesity
    }
  end

  private

  def classify
    case @imc
    when 0..18.5
      @classification = 'Abaixo do peso'
    when 18.5..24.9
      @classification = 'Peso normal'
    when 25..29.9
      @classification = 'Sobrepeso'
    when 30..34.9
      @classification = 'Obesidade'
      @obesity = 'I'
    when 35..39.9
      @classification = 'Obesidade'
      @obesity = 'II'
    when 40..200
      @classification = 'Obesidade'
      @obesity = 'III'
    else
      @classification = 'IMC inválido'
    end
  end
end
