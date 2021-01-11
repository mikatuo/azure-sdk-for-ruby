# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_07_01
  module Models
    #
    # ExpressRouteLink

    # ExpressRouteLink child resource definition.
    #
    class ExpressRouteLink < SubResource

      include MsRestAzure

      # @return [String] Name of Azure router associated with physical port.
      attr_accessor :router_name

      # @return [String] Name of Azure router interface.
      attr_accessor :interface_name

      # @return [String] Mapping between physical port to patch panel port.
      attr_accessor :patch_panel_id

      # @return [String] Mapping of physical patch panel to rack.
      attr_accessor :rack_id

      # @return [ExpressRouteLinkConnectorType] Physical fiber port type.
      # Possible values include: 'LC', 'SC'
      attr_accessor :connector_type

      # @return [ExpressRouteLinkAdminState] Administrative state of the
      # physical port. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :admin_state

      # @return [ProvisioningState] The provisioning state of the express route
      # link resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [ExpressRouteLinkMacSecConfig] MacSec configuration.
      attr_accessor :mac_sec_config

      # @return [String] Name of child port resource that is unique among child
      # port resources of the parent.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ExpressRouteLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteLink',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteLink',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              router_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.routerName',
                type: {
                  name: 'String'
                }
              },
              interface_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.interfaceName',
                type: {
                  name: 'String'
                }
              },
              patch_panel_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.patchPanelId',
                type: {
                  name: 'String'
                }
              },
              rack_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.rackId',
                type: {
                  name: 'String'
                }
              },
              connector_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.connectorType',
                type: {
                  name: 'String'
                }
              },
              admin_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.adminState',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              mac_sec_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.macSecConfig',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteLinkMacSecConfig'
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
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
