# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # Model object.
    #
    #
    class HierarchicalModel

      include MsRestAzure

      # @return [String]
      attr_accessor :name

      # @return [Array<JsonChild>]
      attr_accessor :children

      # @return [Array<JsonModelFeatureInformation>]
      attr_accessor :features

      # @return [Array<String>]
      attr_accessor :roles

      # @return [PrebuiltDomainObject]
      attr_accessor :inherits


      #
      # Mapper for HierarchicalModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HierarchicalModel',
          type: {
            name: 'Composite',
            class_name: 'HierarchicalModel',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              children: {
                client_side_validation: true,
                required: false,
                serialized_name: 'children',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JsonChildElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JsonChild'
                      }
                  }
                }
              },
              features: {
                client_side_validation: true,
                required: false,
                serialized_name: 'features',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JsonModelFeatureInformationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JsonModelFeatureInformation'
                      }
                  }
                }
              },
              roles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'roles',
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
              },
              inherits: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inherits',
                type: {
                  name: 'Composite',
                  class_name: 'PrebuiltDomainObject'
                }
              }
            }
          }
        }
      end
    end
  end
end
