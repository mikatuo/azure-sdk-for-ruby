# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_09_07
  module Models
    #
    # The locations and zones info for SKU.
    #
    class SkuLocationInfoItem

      include MsRestAzure

      # @return [String] The available location of the SKU.
      attr_accessor :location

      # @return [Array<String>] The available zone of the SKU.
      attr_accessor :zones


      #
      # Mapper for SkuLocationInfoItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuLocationInfoItem',
          type: {
            name: 'Composite',
            class_name: 'SkuLocationInfoItem',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              zones: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zones',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
