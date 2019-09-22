Rails.application.routes.draw do
 namespace :api do
  namespace :v1 do
  	get '/', to: proc { [200, {}, ['']] }
   resources :breweries
  end
 end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end