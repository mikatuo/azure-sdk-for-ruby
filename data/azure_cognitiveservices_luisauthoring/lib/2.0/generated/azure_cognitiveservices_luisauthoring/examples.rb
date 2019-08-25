# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  #
  # Examples
  #
  class Examples
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Examples class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [LuisAuthoringClient] reference to the LuisAuthoringClient
    attr_reader :client

    #
    # Adds a labeled example utterance in a version of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param example_label_object [ExampleLabelObject] A labeled example utterance
    # with the expected intent and entities.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LabelExampleResponse] operation results.
    #
    def add(app_id, version_id, example_label_object, custom_headers:nil)
      response = add_async(app_id, version_id, example_label_object, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Adds a labeled example utterance in a version of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param example_label_object [ExampleLabelObject] A labeled example utterance
    # with the expected intent and entities.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_with_http_info(app_id, version_id, example_label_object, custom_headers:nil)
      add_async(app_id, version_id, example_label_object, custom_headers:custom_headers).value!
    end

    #
    # Adds a labeled example utterance in a version of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param example_label_object [ExampleLabelObject] A labeled example utterance
    # with the expected intent and entities.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_async(app_id, version_id, example_label_object, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?
      fail ArgumentError, 'version_id is nil' if version_id.nil?
      fail ArgumentError, 'example_label_object is nil' if example_label_object.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ExampleLabelObject.mapper()
      request_content = @client.serialize(request_mapper,  example_label_object)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'apps/{appId}/versions/{versionId}/example'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id,'versionId' => version_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::LabelExampleResponse.mapper()
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
    # Adds a batch of labeled example utterances to a version of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param example_label_object_array [Array<ExampleLabelObject>] Array of
    # example utterances.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def batch(app_id, version_id, example_label_object_array, custom_headers:nil)
      response = batch_async(app_id, version_id, example_label_object_array, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Adds a batch of labeled example utterances to a version of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param example_label_object_array [Array<ExampleLabelObject>] Array of
    # example utterances.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def batch_with_http_info(app_id, version_id, example_label_object_array, custom_headers:nil)
      batch_async(app_id, version_id, example_label_object_array, custom_headers:custom_headers).value!
    end

    #
    # Adds a batch of labeled example utterances to a version of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param example_label_object_array [Array<ExampleLabelObject>] Array of
    # example utterances.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def batch_async(app_id, version_id, example_label_object_array, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?
      fail ArgumentError, 'version_id is nil' if version_id.nil?
      fail ArgumentError, 'example_label_object_array is nil' if example_label_object_array.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = {
        client_side_validation: true,
        required: true,
        serialized_name: 'exampleLabelObjectArray',
        type: {
          name: 'Sequence',
          element: {
              client_side_validation: true,
              required: false,
              serialized_name: 'ExampleLabelObjectElementType',
              type: {
                name: 'Composite',
                class_name: 'ExampleLabelObject'
              }
          }
        }
      }
      request_content = @client.serialize(request_mapper,  example_label_object_array)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'apps/{appId}/versions/{versionId}/examples'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id,'versionId' => version_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 207
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'BatchLabelExampleElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'BatchLabelExample'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 207
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'BatchLabelExampleElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'BatchLabelExample'
                    }
                }
              }
            }
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
    # Returns example utterances to be reviewed from a version of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param skip [Integer] The number of entries to skip. Default value is 0.
    # @param take [Integer] The number of entries to return. Maximum page size is
    # 500. Default is 100.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list(app_id, version_id, skip:0, take:100, custom_headers:nil)
      response = list_async(app_id, version_id, skip:skip, take:take, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns example utterances to be reviewed from a version of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param skip [Integer] The number of entries to skip. Default value is 0.
    # @param take [Integer] The number of entries to return. Maximum page size is
    # 500. Default is 100.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(app_id, version_id, skip:0, take:100, custom_headers:nil)
      list_async(app_id, version_id, skip:skip, take:take, custom_headers:custom_headers).value!
    end

    #
    # Returns example utterances to be reviewed from a version of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param skip [Integer] The number of entries to skip. Default value is 0.
    # @param take [Integer] The number of entries to return. Maximum page size is
    # 500. Default is 100.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(app_id, version_id, skip:0, take:100, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?
      fail ArgumentError, 'version_id is nil' if version_id.nil?
      fail ArgumentError, "'skip' should satisfy the constraint - 'InclusiveMinimum': '0'" if !skip.nil? && skip < 0
      fail ArgumentError, "'take' should satisfy the constraint - 'InclusiveMaximum': '500'" if !take.nil? && take > 500
      fail ArgumentError, "'take' should satisfy the constraint - 'InclusiveMinimum': '0'" if !take.nil? && take < 0


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'apps/{appId}/versions/{versionId}/examples'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id,'versionId' => version_id},
          query_params: {'skip' => skip,'take' => take},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'LabeledUtteranceElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'LabeledUtterance'
                    }
                }
              }
            }
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
    # Deletes the labeled example utterances with the specified ID from a version
    # of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param example_id [Integer] The example ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatus] operation results.
    #
    def delete(app_id, version_id, example_id, custom_headers:nil)
      response = delete_async(app_id, version_id, example_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Deletes the labeled example utterances with the specified ID from a version
    # of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param example_id [Integer] The example ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(app_id, version_id, example_id, custom_headers:nil)
      delete_async(app_id, version_id, example_id, custom_headers:custom_headers).value!
    end

    #
    # Deletes the labeled example utterances with the specified ID from a version
    # of the application.
    #
    # @param app_id The application ID.
    # @param version_id [String] The version ID.
    # @param example_id [Integer] The example ID.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(app_id, version_id, example_id, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?
      fail ArgumentError, 'version_id is nil' if version_id.nil?
      fail ArgumentError, 'example_id is nil' if example_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'apps/{appId}/versions/{versionId}/examples/{exampleId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id,'versionId' => version_id,'exampleId' => example_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatus.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
