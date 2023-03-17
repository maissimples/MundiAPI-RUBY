# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Request for creating a Setup for a subscription. The setup is an order that
  # will be created at the subscription creation.
  class CreateSetupRequest < BaseModel
    # Setup amount
    # @return [Integer]
    attr_accessor :amount

    # Description
    # @return [String]
    attr_accessor :description

    # Description
    # @return [Payment]
    attr_accessor :payment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['description'] = 'description'
      @_hash['payment'] = 'payment'
      @_hash
    end

    def initialize(amount = nil,
                   description = nil,
                   payment = nil)
      @amount = amount
      @description = description
      @payment = payment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount']
      description = hash['description']
      payment = Payment.from_hash(hash['payment']) if hash['payment']

      # Create object from extracted values.
      CreateSetupRequest.new(amount,
                             description,
                             payment)
    end
  end
end
