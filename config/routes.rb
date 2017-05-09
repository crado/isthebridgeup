Rails.application.routes.draw do
  root 'bridges#index'
  get '/broadway/isUp' => 'bridges#broadway', as: 'broadway'
  get '/burnside/isUp' => 'bridges#burnside', as: 'burnside'
  get '/hawthorne/isUp' => 'bridges#hawthorne', as: 'hawthorne'
  get '/five/isUp' => 'bridges#five', as: 'five'
  get '/morrison/isUp' => 'bridges#morrison', as: 'morrison'
end
