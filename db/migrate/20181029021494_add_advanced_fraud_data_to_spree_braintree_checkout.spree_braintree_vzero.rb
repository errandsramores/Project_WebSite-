# This migration comes from spree_braintree_vzero (originally 20151028095515)
class AddAdvancedFraudDataToSpreeBraintreeCheckout < SpreeExtension::Migration[4.2]
  def change
    add_column :spree_braintree_checkouts, :advanced_fraud_data, :string
  end
end
