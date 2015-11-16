Blorgh::Engine.routes.draw do
  devise_for :users, class_name: "Blorgh::User", module: :devise
  resources :articles
end
