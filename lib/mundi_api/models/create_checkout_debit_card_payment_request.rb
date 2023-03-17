# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Checkout credit card payment request
  class CreateCheckoutDebitCardPaymentRequest < BaseModel
    # Card invoice text descriptor
    # @return [String]
    attr_accessor :statement_descriptor

    # Card invoice text descriptor
    # @return [Authentication2]
    attr_accessor :authentication

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['authentication'] = 'authentication'
      @_hash
    end

    def initialize(authentication = nil,
                   statement_descriptor = nil)
      @statement_descriptor = statement_descriptor
      @authentication = authentication
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      authentication = Authentication2.from_hash(hash['authentication']) if
        hash['authentication']
      statement_descriptor = hash['statement_descriptor']

      # Create object from extracted values.
      CreateCheckoutDebitCardPaymentRequest.new(authentication,
                                                statement_descriptor)
    end
  end
end
