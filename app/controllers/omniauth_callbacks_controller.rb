class OmniauthCallbacksController < ApplicationController
  def stripe_connect
    @vendor = current_vendor
    if @vendor.update_without_password({
      provider: request.env["omniauth.auth"].provider,
      stripe_user_id: request.env["omniauth.auth"].uid,
      stripe_access_token: request.env["omniauth.auth"].credentials.token,
      stripe_refresh_token: request.env["omniauth.auth"].credentials.token,
      stripe_publishable_key:
      request.env["omniauth.auth"].info.stripe_publishable_key
    })

      redirect_to root_path,notice: "Congrats on connecting your Stripe account!"
    else
      redirect_to connect_to_stripe_path, alert: "Please connect to strie before you can continue."
    end
  end
end
