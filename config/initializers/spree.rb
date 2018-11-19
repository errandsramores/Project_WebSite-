# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  config.logo = "logo.jpeg"
  config.admin_interface_logo = "logo.jpeg"
end
Spree.user_class = "Spree::LegacyUser"
Spree::PermittedAttributes.user_attributes.push :first_name, :last_name, :birthday, :gender
Spree::Config.set(:products_per_page => 12)

#initializer 'spree.register.calculators' do |app|
#  config = Rails.application.config
#  config.spree.calculators.tax_rates << EveryThousand
#  config.spree.calculators.shipping_methods << Spree::Calculator::Shipping::EveryThousand
#  config.spree.calculators.promotion_actions_create_adjustments << EveryThousand
#end

  #
  # config = Rails.application.config
  # config.spree.calculators.shipping_methods << Spree::Shipping::Calculator::FreeShipping
