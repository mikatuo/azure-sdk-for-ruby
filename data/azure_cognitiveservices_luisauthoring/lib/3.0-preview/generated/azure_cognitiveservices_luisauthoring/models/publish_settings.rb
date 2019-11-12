# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # The application publish settings.
    #
    class PublishSettings

      include MsRestAzure

      # @return The application ID.
      attr_accessor :id

      # @return [Boolean] Setting sentiment analysis as true returns the
      # sentiment of the input utterance along with the response
      attr_accessor :is_sentiment_analysis_enabled

      # @return [Boolean] Enables speech priming in your app
      attr_accessor :is_speech_enabled

      # @return [Boolean] Enables spell checking of the utterance.
      attr_accessor :is_spell_checker_enabled


      #
      # Mapper for PublishSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PublishSettings',
          type: {
            name: 'Composite',
            class_name: 'PublishSettings',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              is_sentiment_analysis_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sentimentAnalysis',
                type: {
                  name: 'Boolean'
                }
              },
              is_speech_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'speech',
                type: {
                  name: 'Boolean'
                }
              },
              is_spell_checker_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'spellChecker',
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
