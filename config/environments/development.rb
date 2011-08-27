Cats::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin
  
  config.after_initialize do
    ActiveMerchant::Billing::Base.mode = :test
    ::GATEWAY = ActiveMerchant::Billing::PaypalGateway.new(
      :login => "sell1_1311815277_biz_api1.gmail.com",
      :password => "1311815319",
      :signature => "A-Tc9XBEVOm6L4nQ7vvndYDNFvrEAT4iwJuZ470Z6gDe6WArkKOfd9g3"
    )
  end
  
  
  # Test Account:   sell1_1311815277_biz@gmail.com  Jul. 27, 2011 18:08:39 PDT
  # API Username:   sell1_1311815277_biz_api1.gmail.com
  # API Password:   1311815319
  # Signature:  A-Tc9XBEVOm6L4nQ7vvndYDNFvrEAT4iwJuZ470Z6gDe6WArkKOfd9g3
  
  
end

