# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2018_06_01_preview
  module Models
    #
    # The compute isolation properties.
    #
    class ComputeIsolationProperties

      include MsRestAzure

      # @return [Boolean] The flag indicates whether enable compute isolation
      # or not.
      attr_accessor :enable_compute_isolation

      # @return [String] The host sku.
      attr_accessor :host_sku


      #
      # Mapper for ComputeIsolationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ComputeIsolationProperties',
          type: {
            name: 'Composite',
            class_name: 'ComputeIsolationProperties',
            model_properties: {
              enable_compute_isolation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableComputeIsolation',
                type: {
                  name: 'Boolean'
                }
              },
              host_sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hostSku',
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
