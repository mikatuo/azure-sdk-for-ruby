# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotCentral::Mgmt::V2018_09_01
  module Models
    #
    # IoT Central Application Template.
    #
    class AppTemplate

      include MsRestAzure

      # @return [String] The ID of the template.
      attr_accessor :manifest_id

      # @return [String] The version of the template.
      attr_accessor :manifest_version

      # @return [String] The name of the template.
      attr_accessor :name

      # @return [String] The title of the template.
      attr_accessor :title

      # @return [Float] The order of the template in the templates list.
      attr_accessor :order

      # @return [String] The description of the template.
      attr_accessor :description


      #
      # Mapper for AppTemplate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AppTemplate',
          type: {
            name: 'Composite',
            class_name: 'AppTemplate',
            model_properties: {
              manifest_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'manifestId',
                type: {
                  name: 'String'
                }
              },
              manifest_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'manifestVersion',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              title: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              order: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'order',
                type: {
                  name: 'Double'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
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
