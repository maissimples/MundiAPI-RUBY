# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # RecipientsRequest1 Model.
  class RecipientsRequest1 < BaseModel
    # Name
    # @return [String]
    attr_accessor :name

    # Email
    # @return [String]
    attr_accessor :email

    # Description
    # @return [String]
    attr_accessor :description

    # Type
    # @return [String]
    attr_accessor :type

    # Status
    # @return [String]
    attr_accessor :status

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['email'] = 'email'
      @_hash['description'] = 'description'
      @_hash['type'] = 'type'
      @_hash['status'] = 'status'
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    def initialize(name = nil,
                   email = nil,
                   description = nil,
                   type = nil,
                   status = nil,
                   metadata = nil)
      @name = name
      @email = email
      @description = description
      @type = type
      @status = status
      @metadata = metadata
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      email = hash['email']
      description = hash['description']
      type = hash['type']
      status = hash['status']
      metadata = hash['metadata']

      # Create object from extracted values.
      RecipientsRequest1.new(name,
                             email,
                             description,
                             type,
                             status,
                             metadata)
    end
  end
end
