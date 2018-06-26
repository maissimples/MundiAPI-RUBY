# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # CreateCashPaymentRequest Model.
  class CreateCashPaymentRequest < BaseModel
    # Description
    # @return [String]
    attr_accessor :description

    # Indicates whether cash collection will be confirmed in the act of creation
    # @return [Boolean]
    attr_accessor :confirm

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['description'] = 'description'
      @_hash['confirm'] = 'confirm'
      @_hash
    end

    def initialize(description = nil,
                   confirm = nil)
      @description = description
      @confirm = confirm
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      description = hash['description']
      confirm = hash['confirm']

      # Create object from extracted values.
      CreateCashPaymentRequest.new(description,
                                   confirm)
    end
  end
end
