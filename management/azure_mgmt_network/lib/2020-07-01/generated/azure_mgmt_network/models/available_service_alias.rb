# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_07_01
  module Models
    #
    # The available service alias.
    #
    class AvailableServiceAlias

      include MsRestAzure

      # @return [String] The name of the service alias.
      attr_accessor :name

      # @return [String] The ID of the service alias.
      attr_accessor :id

      # @return [String] The type of the resource.
      attr_accessor :type

      # @return [String] The resource name of the service alias.
      attr_accessor :resource_name


      #
      # Mapper for AvailableServiceAlias class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableServiceAlias',
          type: {
            name: 'Composite',
            class_name: 'AvailableServiceAlias',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceName',
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
