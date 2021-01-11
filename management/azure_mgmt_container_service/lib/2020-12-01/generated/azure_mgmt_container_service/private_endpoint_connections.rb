# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_12_01
  #
  # The Container Service Client.
  #
  class PrivateEndpointConnections
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PrivateEndpointConnections class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContainerServiceClient] reference to the ContainerServiceClient
    attr_reader :client

    #
    # Gets a list of private endpoint connections in the specified managed cluster.
    #
    # Gets a list of private endpoint connections in the specified managed cluster.
    # The operation returns properties of each private endpoint connection.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PrivateEndpointConnectionListResult] operation results.
    #
    def list(resource_group_name, resource_name, custom_headers:nil)
      response = list_async(resource_group_name, resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of private endpoint connections in the specified managed cluster.
    #
    # Gets a list of private endpoint connections in the specified managed cluster.
    # The operation returns properties of each private endpoint connection.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, resource_name, custom_headers:nil)
      list_async(resource_group_name, resource_name, custom_headers:custom_headers).value!
    end

    #
    # Gets a list of private endpoint connections in the specified managed cluster.
    #
    # Gets a list of private endpoint connections in the specified managed cluster.
    # The operation returns properties of each private endpoint connection.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, resource_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MaxLength': '63'" if !resource_name.nil? && resource_name.length > 63
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MinLength': '1'" if !resource_name.nil? && resource_name.length < 1
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$'" if !resource_name.nil? && resource_name.match(Regexp.new('^^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$$')).nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/privateEndpointConnections'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerService::Mgmt::V2020_12_01::Models::PrivateEndpointConnectionListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the private endpoint connection.
    #
    # Gets the details of the private endpoint connection by managed cluster and
    # resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PrivateEndpointConnection] operation results.
    #
    def get(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:nil)
      response = get_async(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the private endpoint connection.
    #
    # Gets the details of the private endpoint connection by managed cluster and
    # resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:nil)
      get_async(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the private endpoint connection.
    #
    # Gets the details of the private endpoint connection by managed cluster and
    # resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MaxLength': '63'" if !resource_name.nil? && resource_name.length > 63
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MinLength': '1'" if !resource_name.nil? && resource_name.length < 1
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$'" if !resource_name.nil? && resource_name.match(Regexp.new('^^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$$')).nil?
      fail ArgumentError, 'private_endpoint_connection_name is nil' if private_endpoint_connection_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name,'privateEndpointConnectionName' => private_endpoint_connection_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerService::Mgmt::V2020_12_01::Models::PrivateEndpointConnection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Updates a private endpoint connection.
    #
    # Updates a private endpoint connection in the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param parameters [PrivateEndpointConnection] Parameters supplied to the
    # Update a private endpoint connection operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PrivateEndpointConnection] operation results.
    #
    def update(resource_group_name, resource_name, private_endpoint_connection_name, parameters, custom_headers:nil)
      response = update_async(resource_group_name, resource_name, private_endpoint_connection_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates a private endpoint connection.
    #
    # Updates a private endpoint connection in the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param parameters [PrivateEndpointConnection] Parameters supplied to the
    # Update a private endpoint connection operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, resource_name, private_endpoint_connection_name, parameters, custom_headers:nil)
      update_async(resource_group_name, resource_name, private_endpoint_connection_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Updates a private endpoint connection.
    #
    # Updates a private endpoint connection in the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param parameters [PrivateEndpointConnection] Parameters supplied to the
    # Update a private endpoint connection operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, resource_name, private_endpoint_connection_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MaxLength': '63'" if !resource_name.nil? && resource_name.length > 63
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MinLength': '1'" if !resource_name.nil? && resource_name.length < 1
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$'" if !resource_name.nil? && resource_name.match(Regexp.new('^^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$$')).nil?
      fail ArgumentError, 'private_endpoint_connection_name is nil' if private_endpoint_connection_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ContainerService::Mgmt::V2020_12_01::Models::PrivateEndpointConnection.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name,'privateEndpointConnectionName' => private_endpoint_connection_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerService::Mgmt::V2020_12_01::Models::PrivateEndpointConnection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes a private endpoint connection.
    #
    # Deletes the private endpoint connection in the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:nil)
      response = delete_async(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes a private endpoint connection.
    #
    # Deletes the private endpoint connection in the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:nil)
      response = begin_delete_async(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes a private endpoint connection.
    #
    # Deletes the private endpoint connection in the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:nil)
      begin_delete_async(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes a private endpoint connection.
    #
    # Deletes the private endpoint connection in the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param private_endpoint_connection_name [String] The name of the private
    # endpoint connection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, resource_name, private_endpoint_connection_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MaxLength': '63'" if !resource_name.nil? && resource_name.length > 63
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MinLength': '1'" if !resource_name.nil? && resource_name.length < 1
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$'" if !resource_name.nil? && resource_name.match(Regexp.new('^^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$$')).nil?
      fail ArgumentError, 'private_endpoint_connection_name is nil' if private_endpoint_connection_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name,'privateEndpointConnectionName' => private_endpoint_connection_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
