Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :customers, :owners, :customer_waitlists

  resources :waitlists do
    collection do 
      post :search, :action => 'search', :as => 'search'
    end
  end
end
