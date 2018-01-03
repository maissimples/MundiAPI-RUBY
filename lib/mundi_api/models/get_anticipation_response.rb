# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Anticipation
  class GetAnticipationResponse < BaseModel
    # Id
    # @return [String]
    attr_accessor :id

    # Requested amount
    # @return [Integer]
    attr_accessor :requested_amount

    # Approved amount
    # @return [Integer]
    attr_accessor :approved_amount

    # Recipient
    # @return [GetRecipientResponse]
    attr_accessor :recipient

    # Anticipation id on the gateway
    # @return [String]
    attr_accessor :pgid

    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Last update date
    # @return [DateTime]
    attr_accessor :updated_at

    # Payment date
    # @return [DateTime]
    attr_accessor :payment_date

    # Status
    # @return [String]
    attr_accessor :status

    # Timeframe
    # @return [String]
    attr_accessor :timeframe

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['requested_amount'] = 'requested_amount'
      @_hash['approved_amount'] = 'approved_amount'
      @_hash['recipient'] = 'recipient'
      @_hash['pgid'] = 'pgid'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['payment_date'] = 'payment_date'
      @_hash['status'] = 'status'
      @_hash['timeframe'] = 'timeframe'
      @_hash
    end

    def initialize(id = nil,
                   requested_amount = nil,
                   approved_amount = nil,
                   recipient = nil,
                   pgid = nil,
                   created_at = nil,
                   updated_at = nil,
                   payment_date = nil,
                   status = nil,
                   timeframe = nil)
      @id = id
      @requested_amount = requested_amount
      @approved_amount = approved_amount
      @recipient = recipient
      @pgid = pgid
      @created_at = created_at
      @updated_at = updated_at
      @payment_date = payment_date
      @status = status
      @timeframe = timeframe
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      requested_amount = hash['requested_amount']
      approved_amount = hash['approved_amount']
      recipient = GetRecipientResponse.from_hash(hash['recipient']) if
        hash['recipient']
      pgid = hash['pgid']
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = DateTime.rfc3339(hash['updated_at']) if hash['updated_at']
      payment_date = DateTime.rfc3339(hash['payment_date']) if
        hash['payment_date']
      status = hash['status']
      timeframe = hash['timeframe']

      # Create object from extracted values.
      GetAnticipationResponse.new(id,
                                  requested_amount,
                                  approved_amount,
                                  recipient,
                                  pgid,
                                  created_at,
                                  updated_at,
                                  payment_date,
                                  status,
                                  timeframe)
    end
  end
end