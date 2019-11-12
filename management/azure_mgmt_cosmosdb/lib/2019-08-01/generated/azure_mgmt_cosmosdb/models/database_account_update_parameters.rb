# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # Parameters for patching Azure Cosmos DB database account properties.
    #
    class DatabaseAccountUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}]
      attr_accessor :tags

      # @return [String] The location of the resource group to which the
      # resource belongs.
      attr_accessor :location

      # @return [ConsistencyPolicy] The consistency policy for the Cosmos DB
      # account.
      attr_accessor :consistency_policy

      # @return [Array<Location>] An array that contains the georeplication
      # locations enabled for the Cosmos DB account.
      attr_accessor :locations

      # @return [String] Cosmos DB Firewall Support: This value specifies the
      # set of IP addresses or IP address ranges in CIDR form to be included as
      # the allowed list of client IPs for a given database account. IP
      # addresses/ranges must be comma separated and must not contain any
      # spaces.
      attr_accessor :ip_range_filter

      # @return [Boolean] Flag to indicate whether to enable/disable Virtual
      # Network ACL rules.
      attr_accessor :is_virtual_network_filter_enabled

      # @return [Boolean] Enables automatic failover of the write region in the
      # rare event that the region is unavailable due to an outage. Automatic
      # failover will result in a new write region for the account and is
      # chosen based on the failover priorities configured for the account.
      attr_accessor :enable_automatic_failover

      # @return [Array<Capability>] List of Cosmos DB capabilities for the
      # account
      attr_accessor :capabilities

      # @return [Array<VirtualNetworkRule>] List of Virtual Network ACL rules
      # configured for the Cosmos DB account.
      attr_accessor :virtual_network_rules

      # @return [Boolean] Enables the account to write in multiple locations
      attr_accessor :enable_multiple_write_locations

      # @return [Boolean] Enables the cassandra connector on the Cosmos DB C*
      # account
      attr_accessor :enable_cassandra_connector

      # @return [ConnectorOffer] The cassandra connector offer type for the
      # Cosmos DB database C* account. Possible values include: 'Small'
      attr_accessor :connector_offer

      # @return [Boolean] Disable write operations on metadata resources
      # (databases, containers, throughput) via account keys
      attr_accessor :disable_key_based_metadata_write_access


      #
      # Mapper for DatabaseAccountUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseAccountUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'DatabaseAccountUpdateParameters',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              consistency_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.consistencyPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ConsistencyPolicy'
                }
              },
              locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.locations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Location'
                      }
                  }
                }
              },
              ip_range_filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipRangeFilter',
                type: {
                  name: 'String'
                }
              },
              is_virtual_network_filter_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isVirtualNetworkFilterEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              enable_automatic_failover: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableAutomaticFailover',
                type: {
                  name: 'Boolean'
                }
              },
              capabilities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.capabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Capability'
                      }
                  }
                }
              },
              virtual_network_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualNetworkRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkRule'
                      }
                  }
                }
              },
              enable_multiple_write_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableMultipleWriteLocations',
                type: {
                  name: 'Boolean'
                }
              },
              enable_cassandra_connector: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableCassandraConnector',
                type: {
                  name: 'Boolean'
                }
              },
              connector_offer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connectorOffer',
                type: {
                  name: 'String'
                }
              },
              disable_key_based_metadata_write_access: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disableKeyBasedMetadataWriteAccess',
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
