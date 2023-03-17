# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # PlansItemsRequest Model.
  class PlansItemsRequest < BaseModel
    # Item name
    # @return [String]
    attr_accessor :name

    # Description
    # @return [String]
    attr_accessor :description

    # Item status
    # @return [String]
    attr_accessor :status

    # Item status
    # @return [PricingScheme3]
    attr_accessor :pricing_scheme

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Number of cycles that the item will be charged
    # @return [Integer]
    attr_accessor :cycles

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
      @_hash['status'] = 'status'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['quantity'] = 'quantity'
      @_hash['cycles'] = 'cycles'
      @_hash
    end

    def initialize(name = nil,
                   description = nil,
                   status = nil,
                   pricing_scheme = nil,
                   quantity = nil,
                   cycles = nil)
      @name = name
      @description = description
      @status = status
      @pricing_scheme = pricing_scheme
      @quantity = quantity
      @cycles = cycles
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      description = hash['description']
      status = hash['status']
      pricing_scheme = PricingScheme3.from_hash(hash['pricing_scheme']) if
        hash['pricing_scheme']
      quantity = hash['quantity']
      cycles = hash['cycles']

      # Create object from extracted values.
      PlansItemsRequest.new(name,
                            description,
                            status,
                            pricing_scheme,
                            quantity,
                            cycles)
    end
  end
end
