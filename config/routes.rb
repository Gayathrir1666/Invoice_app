Rails.application.routes.draw do

  get 'omniauth_callbacks/stripe_connect'
  devise_for :vendors, controllers: { registrations: "registrations", omniauth_callbacks: "omniauth_callbacks"}
  get "connect-to-stripe", to: "vendor_onboarding#connect_to_stripe"
  root "home#index"
end
