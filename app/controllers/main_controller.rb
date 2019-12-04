class MainController < ApplicationController
  def index
  end

  def charge
    tok = params['stripeToken']
    Stripe.api_key = 'vagd-flyy-ygob-virr-uwlv'
  end
end
