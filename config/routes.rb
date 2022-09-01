Rails.application.routes.draw do
  post '/imc', to: 'imc#calculate'
end
