Rails.application.routes.draw do

  get 'omniauth_callbacks/stripe_connect'
  devise_for :vendors, controllers: { registrations: "registrations", omniauth_callbacks: "omniauth_callbacks"}
  get "connect-to-stripe", to: "vendor_onboarding#connect_to_stripe"
  get "stripe-connect-confirmation", to: "vendor_onboarding#stripe_connect_confirmation"

  resources :invoices
  root "home#index"
end
