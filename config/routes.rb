Rails.application.routes.draw do
  mount ChinaCity::Engine => '/china_city'
  resources :home 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
