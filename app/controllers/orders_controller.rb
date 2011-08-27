class OrdersController < ApplicationController
  def new
    @order = Order.new
  end
  
  def create
    # Use the TrustCommerce test servers
    # ActiveMerchant::Billing::Base.mode = :test

    # ActiveMerchant accepts all amounts as Integer values in cents
    # $10.00
    amount = 1000

    # The card verification value is also known as CVV2, CVC2, or CID 
    credit_card = ActiveMerchant::Billing::CreditCard.new(
                    :first_name         => 'Bob',
                    :last_name          => 'Bobsen',
                    :number             => '4242424242424242',
                    :month              => '8',
                    :year               => '2012',
                    :verification_value => '123'
                  )

    # Validating the card automatically detects the card type
    
    logger.info "credit_card: #{credit_card.inspect}"
    if credit_card.valid?
      logger.info "credit_card is valid"

      address = {
        :address1 => "123 Street",
        # :address2 => nil,
        :city => "Chicago",
        :state => "IL",
        :zip => "12345",
        :phone => "2342342345",
        :country => "US"
      }
      # Authorize for the amount
      response = GATEWAY.purchase(amount, credit_card, {:ip => request.remote_ip,
                                                        :address => address,
                                                        :billing_address => address})

      if response.success?
        logger.info "Successfully charged $#{sprintf("%.2f", amount / 100)} to the credit card #{credit_card.display_number}"
      else
        raise StandardError, response.message 
      end
    end

  end
end
