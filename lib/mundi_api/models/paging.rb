# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Paging Model.
  class Paging < BaseModel
    # Total number of pages
    # @return [Integer]
    attr_accessor :total

    # Previous page
    # @return [String]
    attr_accessor :previous

    # Next page
    # @return [String]
    attr_accessor :mnext

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total'] = 'total'
      @_hash['previous'] = 'previous'
      @_hash['mnext'] = 'next'
      @_hash
    end

    def initialize(total = nil,
                   previous = nil,
                   mnext = nil)
      @total = total
      @previous = previous
      @mnext = mnext
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total = hash['total']
      previous = hash['previous']
      mnext = hash['next']

      # Create object from extracted values.
      Paging.new(total,
                 previous,
                 mnext)
    end
  end
end
