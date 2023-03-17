# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Request for canceling a subscription
  class CreateCancelSubscriptionRequest < BaseModel
    # Indicates if the pending invoices must also be canceled.
    # @return [Boolean]
    attr_accessor :cancel_pending_invoices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cancel_pending_invoices'] = 'cancel_pending_invoices'
      @_hash
    end

    def initialize(cancel_pending_invoices = nil)
      @cancel_pending_invoices = cancel_pending_invoices
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      cancel_pending_invoices = hash['cancel_pending_invoices']

      # Create object from extracted values.
      CreateCancelSubscriptionRequest.new(cancel_pending_invoices)
    end
  end
end
