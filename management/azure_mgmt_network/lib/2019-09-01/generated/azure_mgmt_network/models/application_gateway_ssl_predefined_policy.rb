# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_09_01
  module Models
    #
    # An Ssl predefined policy.
    #
    class ApplicationGatewaySslPredefinedPolicy < SubResource

      include MsRestAzure

      # @return [String] Name of the Ssl predefined policy.
      attr_accessor :name

      # @return [Array<ApplicationGatewaySslCipherSuite>] Ssl cipher suites to
      # be enabled in the specified order for application gateway.
      attr_accessor :cipher_suites

      # @return [ApplicationGatewaySslProtocol] Minimum version of Ssl protocol
      # to be supported on application gateway. Possible values include:
      # 'TLSv1_0', 'TLSv1_1', 'TLSv1_2'
      attr_accessor :min_protocol_version


      #
      # Mapper for ApplicationGatewaySslPredefinedPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewaySslPredefinedPolicy',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewaySslPredefinedPolicy',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              cipher_suites: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cipherSuites',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewaySslCipherSuiteElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              min_protocol_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.minProtocolVersion',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
