# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

require 'date'
module MundiApi
  # Response object to bank account
  class GetBankAccountResponse < BaseModel
    # Id
    # @return [String]
    attr_accessor :id

    # Holder name
    # @return [String]
    attr_accessor :holder_name

    # Holder type
    # @return [String]
    attr_accessor :holder_type

    # Bank
    # @return [String]
    attr_accessor :bank

    # Branch number
    # @return [String]
    attr_accessor :branch_number

    # Branch check digit
    # @return [String]
    attr_accessor :branch_check_digit

    # Account number
    # @return [String]
    attr_accessor :account_number

    # Account check digit
    # @return [String]
    attr_accessor :account_check_digit

    # Bank account type
    # @return [String]
    attr_accessor :type

    # Bank account status
    # @return [String]
    attr_accessor :status

    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Last update date
    # @return [DateTime]
    attr_accessor :updated_at

    # Deletion date
    # @return [DateTime]
    attr_accessor :deleted_at

    # Deletion date
    # @return [Recipient]
    attr_accessor :recipient

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # Pix Key
    # @return [String]
    attr_accessor :pix_key

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['holder_name'] = 'holder_name'
      @_hash['holder_type'] = 'holder_type'
      @_hash['bank'] = 'bank'
      @_hash['branch_number'] = 'branch_number'
      @_hash['branch_check_digit'] = 'branch_check_digit'
      @_hash['account_number'] = 'account_number'
      @_hash['account_check_digit'] = 'account_check_digit'
      @_hash['type'] = 'type'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash['recipient'] = 'recipient'
      @_hash['metadata'] = 'metadata'
      @_hash['pix_key'] = 'pix_key'
      @_hash
    end

    def initialize(id = nil,
                   holder_name = nil,
                   holder_type = nil,
                   bank = nil,
                   branch_number = nil,
                   branch_check_digit = nil,
                   account_number = nil,
                   account_check_digit = nil,
                   type = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   deleted_at = nil,
                   metadata = nil,
                   pix_key = nil,
                   recipient = nil)
      @id = id
      @holder_name = holder_name
      @holder_type = holder_type
      @bank = bank
      @branch_number = branch_number
      @branch_check_digit = branch_check_digit
      @account_number = account_number
      @account_check_digit = account_check_digit
      @type = type
      @status = status
      @created_at = created_at
      @updated_at = updated_at
      @deleted_at = deleted_at
      @recipient = recipient
      @metadata = metadata
      @pix_key = pix_key
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      holder_name = hash['holder_name']
      holder_type = hash['holder_type']
      bank = hash['bank']
      branch_number = hash['branch_number']
      branch_check_digit = hash['branch_check_digit']
      account_number = hash['account_number']
      account_check_digit = hash['account_check_digit']
      type = hash['type']
      status = hash['status']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      deleted_at = APIHelper.rfc3339(hash['deleted_at']) if hash['deleted_at']
      metadata = hash['metadata']
      pix_key = hash['pix_key']
      recipient = Recipient.from_hash(hash['recipient']) if hash['recipient']

      # Create object from extracted values.
      GetBankAccountResponse.new(id,
                                 holder_name,
                                 holder_type,
                                 bank,
                                 branch_number,
                                 branch_check_digit,
                                 account_number,
                                 account_check_digit,
                                 type,
                                 status,
                                 created_at,
                                 updated_at,
                                 deleted_at,
                                 metadata,
                                 pix_key,
                                 recipient)
    end
  end
end
