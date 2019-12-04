class MainController < ApplicationController
  def index
  end

  def charge
    token = params['stripeToken']
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    charge = Stripe::Charge.create({
      amount: 999,
      currency: 'usd',
      description: 'Example charge',
      source: token
    })

    puts charge
  end
end
