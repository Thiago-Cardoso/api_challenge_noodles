Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'informations/calculate_noodles', to: 'informations#calculate_noodles'
    end
  end
end
