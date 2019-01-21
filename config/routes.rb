Rails.application.routes.draw do
  resources :guides do
    collection do
      get 'guia'
      get 'termo'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
