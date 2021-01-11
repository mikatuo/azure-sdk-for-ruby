# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The properties of cluster.
    #
    class ClusterGetProperties

      include MsRestAzure

      # @return [String] The version of the cluster.
      attr_accessor :cluster_version

      # @return [OSType] The type of operating system. Possible values include:
      # 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [Tier] The cluster tier. Possible values include: 'Standard',
      # 'Premium'
      attr_accessor :tier

      # @return [String] The cluster id.
      attr_accessor :cluster_id

      # @return [ClusterDefinition] The cluster definition.
      attr_accessor :cluster_definition

      # @return [KafkaRestProperties] The cluster kafka rest proxy
      # configuration.
      attr_accessor :kafka_rest_properties

      # @return [SecurityProfile] The security profile.
      attr_accessor :security_profile

      # @return [ComputeProfile] The compute profile.
      attr_accessor :compute_profile

      # @return [HDInsightClusterProvisioningState] The provisioning state,
      # which only appears in the response. Possible values include:
      # 'InProgress', 'Failed', 'Succeeded', 'Canceled', 'Deleting'
      attr_accessor :provisioning_state

      # @return [String] The date on which the cluster was created.
      attr_accessor :created_date

      # @return [String] The state of the cluster.
      attr_accessor :cluster_state

      # @return [QuotaInfo] The quota information.
      attr_accessor :quota_info

      # @return [Array<Errors>] The list of errors.
      attr_accessor :errors

      # @return [Array<ConnectivityEndpoint>] The list of connectivity
      # endpoints.
      attr_accessor :connectivity_endpoints

      # @return [DiskEncryptionProperties] The disk encryption properties.
      attr_accessor :disk_encryption_properties

      # @return [EncryptionInTransitProperties] The encryption-in-transit
      # properties.
      attr_accessor :encryption_in_transit_properties

      # @return [String] The minimal supported tls version.
      attr_accessor :min_supported_tls_version

      # @return [NetworkProperties] The network properties.
      attr_accessor :network_properties


      #
      # Mapper for ClusterGetProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterGetProperties',
          type: {
            name: 'Composite',
            class_name: 'ClusterGetProperties',
            model_properties: {
              cluster_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clusterVersion',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'Enum',
                  module: 'OSType'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'Enum',
                  module: 'Tier'
                }
              },
              cluster_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clusterId',
                type: {
                  name: 'String'
                }
              },
              cluster_definition: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clusterDefinition',
                type: {
                  name: 'Composite',
                  class_name: 'ClusterDefinition'
                }
              },
              kafka_rest_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kafkaRestProperties',
                type: {
                  name: 'Composite',
                  class_name: 'KafkaRestProperties'
                }
              },
              security_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'securityProfile',
                type: {
                  name: 'Composite',
                  class_name: 'SecurityProfile'
                }
              },
              compute_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'computeProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ComputeProfile'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisioningState',
                type: {
                  name: 'Enum',
                  module: 'HDInsightClusterProvisioningState'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createdDate',
                type: {
                  name: 'String'
                }
              },
              cluster_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clusterState',
                type: {
                  name: 'String'
                }
              },
              quota_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'quotaInfo',
                type: {
                  name: 'Composite',
                  class_name: 'QuotaInfo'
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Errors'
                      }
                  }
                }
              },
              connectivity_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectivityEndpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectivityEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectivityEndpoint'
                      }
                  }
                }
              },
              disk_encryption_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskEncryptionProperties',
                type: {
                  name: 'Composite',
                  class_name: 'DiskEncryptionProperties'
                }
              },
              encryption_in_transit_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptionInTransitProperties',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionInTransitProperties'
                }
              },
              min_supported_tls_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minSupportedTlsVersion',
                type: {
                  name: 'String'
                }
              },
              network_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkProperties',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
