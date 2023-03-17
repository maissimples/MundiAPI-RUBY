# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # TransfersController
  class TransfersController < BaseController
    @instance = TransfersController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # CreateTransfer
    # @param [CreateTransfer] body Required parameter: Example:
    # @return GetTransfer response from the API call
    def post_create_transfer(body)
      # Prepare query url.
      _path_url = '/transfers/recipients'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetTransfer.from_hash(decoded)
    end

    # GetTransferById
    # @param [String] transfer_id Required parameter: Example:
    # @return GetTransfer response from the API call
    def get_transfer_by_id(transfer_id)
      # Prepare query url.
      _path_url = '/transfers/{transfer_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'transfer_id' => transfer_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetTransfer.from_hash(decoded)
    end

    # Gets all transfers
    # @return ListTransfers response from the API call
    def get_transfers1
      # Prepare query url.
      _path_url = '/transfers'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ListTransfers.from_hash(decoded)
    end
  end
end
