# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_05_15
  module Models
    #
    # The result returned from a data connections check name availability
    # request.
    #
    class DataConnectionCheckNameRequest

      include MsRestAzure

      # @return [String] Data Connection name.
      attr_accessor :name

      # @return [String] The type of resource,
      # Microsoft.Kusto/clusters/databases/dataConnections. Default value:
      # 'Microsoft.Kusto/clusters/databases/dataConnections' .
      attr_accessor :type


      #
      # Mapper for DataConnectionCheckNameRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataConnectionCheckNameRequest',
          type: {
            name: 'Composite',
            class_name: 'DataConnectionCheckNameRequest',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.Kusto/clusters/databases/dataConnections',
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
