Rails.application.routes.draw do

  devise_scope :vendors
  root "home#index"
end
