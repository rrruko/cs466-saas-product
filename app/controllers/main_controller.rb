class MainController < ApplicationController
  def index
  end

  def buy
  end

  def charge
    token = params['stripeToken']
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    begin
      charge = Stripe::Charge.create({
        amount: 999,
        currency: 'usd',
        description: 'Example charge',
        source: token
      })
      puts "Submitted charge: #{charge}"
      redirect_to :success
    rescue Stripe::CardError => e
      @error = e
      render :buy
    end
  end

  def success
  end
end
