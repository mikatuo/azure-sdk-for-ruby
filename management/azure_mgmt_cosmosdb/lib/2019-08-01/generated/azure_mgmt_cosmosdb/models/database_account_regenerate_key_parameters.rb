# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # Parameters to regenerate the keys within the database account.
    #
    class DatabaseAccountRegenerateKeyParameters

      include MsRestAzure

      # @return [KeyKind] The access key to regenerate. Possible values
      # include: 'primary', 'secondary', 'primaryReadonly', 'secondaryReadonly'
      attr_accessor :key_kind


      #
      # Mapper for DatabaseAccountRegenerateKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseAccountRegenerateKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'DatabaseAccountRegenerateKeyParameters',
            model_properties: {
              key_kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyKind',
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
