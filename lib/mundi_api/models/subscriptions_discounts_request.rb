# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # SubscriptionsDiscountsRequest Model.
  class SubscriptionsDiscountsRequest < BaseModel
    # The discount value
    # @return [Float]
    attr_accessor :value

    # Discount type. Can be either flat or percentage.
    # @return [String]
    attr_accessor :discount_type

    # The item where the discount will be applied
    # @return [String]
    attr_accessor :item_id

    # Number of cycles that the discount will be applied
    # @return [Integer]
    attr_accessor :cycles

    # Description
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['value'] = 'value'
      @_hash['discount_type'] = 'discount_type'
      @_hash['item_id'] = 'item_id'
      @_hash['cycles'] = 'cycles'
      @_hash['description'] = 'description'
      @_hash
    end

    def initialize(value = nil,
                   discount_type = nil,
                   item_id = nil,
                   cycles = nil,
                   description = nil)
      @value = value
      @discount_type = discount_type
      @item_id = item_id
      @cycles = cycles
      @description = description
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      value = hash['value']
      discount_type = hash['discount_type']
      item_id = hash['item_id']
      cycles = hash['cycles']
      description = hash['description']

      # Create object from extracted values.
      SubscriptionsDiscountsRequest.new(value,
                                        discount_type,
                                        item_id,
                                        cycles,
                                        description)
    end
  end
end
