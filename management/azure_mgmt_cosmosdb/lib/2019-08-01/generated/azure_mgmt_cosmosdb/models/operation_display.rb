# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # The object that represents the operation.
    #
    class OperationDisplay

      include MsRestAzure

      # @return [String] Service provider: Microsoft.ResourceProvider
      attr_accessor :provider

      # @return [String] Resource on which the operation is performed: Profile,
      # endpoint, etc.
      attr_accessor :resource

      # @return [String] Operation type: Read, write, delete, etc.
      attr_accessor :operation

      # @return [String] Description of operation
      attr_accessor :description


      #
      # Mapper for OperationDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Operation_display',
          type: {
            name: 'Composite',
            class_name: 'OperationDisplay',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Description',
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
