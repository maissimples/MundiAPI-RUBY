# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # ChargesMetadataRequest Model.
  class ChargesMetadataRequest < BaseModel
    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    def initialize(metadata = nil)
      @metadata = metadata
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      metadata = hash['metadata']

      # Create object from extracted values.
      ChargesMetadataRequest.new(metadata)
    end
  end
end
