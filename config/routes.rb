Rails.application.routes.draw do
  root 'bridges#index'
  get '/:name' => 'bridges#show', as: "name"
  get '/yes' => 'bridges#yes', as: 'yes'
end
