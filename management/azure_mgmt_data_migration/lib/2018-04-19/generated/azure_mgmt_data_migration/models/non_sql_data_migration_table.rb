# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Defines metadata for table to be migrated
    #
    class NonSqlDataMigrationTable

      include MsRestAzure

      # @return [String] Source table name
      attr_accessor :source_name


      #
      # Mapper for NonSqlDataMigrationTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NonSqlDataMigrationTable',
          type: {
            name: 'Composite',
            class_name: 'NonSqlDataMigrationTable',
            model_properties: {
              source_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceName',
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
