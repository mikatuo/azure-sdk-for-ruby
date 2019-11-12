# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # Virtual Network ACL Rule object
    #
    class VirtualNetworkRule

      include MsRestAzure

      # @return [String] Resource ID of a subnet, for example:
      # /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}.
      attr_accessor :id

      # @return [Boolean] Create firewall rule before the virtual network has
      # vnet service endpoint enabled.
      attr_accessor :ignore_missing_vnet_service_endpoint


      #
      # Mapper for VirtualNetworkRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkRule',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkRule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              ignore_missing_vnet_service_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ignoreMissingVNetServiceEndpoint',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
