Rails.application.routes.draw do

  devise_for :vendors, controlllers: { registrations: "registrations"}
  get "connect-to-stripe", to: "vendor_onboarding#connect_to_stripe"
  root "home#index"
end
