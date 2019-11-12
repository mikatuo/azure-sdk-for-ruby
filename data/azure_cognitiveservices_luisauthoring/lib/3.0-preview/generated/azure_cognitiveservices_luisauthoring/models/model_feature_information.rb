# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # An object containing the model feature information either the model name
    # or feature name.
    #
    class ModelFeatureInformation

      include MsRestAzure

      # @return [String] The name of the model used.
      attr_accessor :model_name

      # @return [String] The name of the feature used.
      attr_accessor :feature_name


      #
      # Mapper for ModelFeatureInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ModelFeatureInformation',
          type: {
            name: 'Composite',
            class_name: 'ModelFeatureInformation',
            model_properties: {
              model_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modelName',
                type: {
                  name: 'String'
                }
              },
              feature_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'featureName',
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
