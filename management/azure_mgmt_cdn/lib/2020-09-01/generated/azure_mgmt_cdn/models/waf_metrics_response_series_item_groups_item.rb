# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class WafMetricsResponseSeriesItemGroupsItem

      include MsRestAzure

      # @return [String]
      attr_accessor :name

      # @return [String]
      attr_accessor :value


      #
      # Mapper for WafMetricsResponseSeriesItemGroupsItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WafMetricsResponse_seriesItem_groupsItem',
          type: {
            name: 'Composite',
            class_name: 'WafMetricsResponseSeriesItemGroupsItem',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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
