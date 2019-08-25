# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Defines the entity type and position of the extracted entity within the
    # example.
    #
    class EntityLabel

      include MsRestAzure

      # @return [String] The entity type.
      attr_accessor :entity_name

      # @return [Integer] The index within the utterance where the extracted
      # entity starts.
      attr_accessor :start_token_index

      # @return [Integer] The index within the utterance where the extracted
      # entity ends.
      attr_accessor :end_token_index

      # @return [String] The role of the entity within the utterance.
      attr_accessor :role

      # @return [String] The role Id.
      attr_accessor :role_id


      #
      # Mapper for EntityLabel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityLabel',
          type: {
            name: 'Composite',
            class_name: 'EntityLabel',
            model_properties: {
              entity_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'entityName',
                type: {
                  name: 'String'
                }
              },
              start_token_index: {
                client_side_validation: true,
                required: true,
                serialized_name: 'startTokenIndex',
                type: {
                  name: 'Number'
                }
              },
              end_token_index: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endTokenIndex',
                type: {
                  name: 'Number'
                }
              },
              role: {
                client_side_validation: true,
                required: false,
                serialized_name: 'role',
                type: {
                  name: 'String'
                }
              },
              role_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'roleId',
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
