# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Object used to report the data migration results of a table
    #
    class NonSqlDataMigrationTableResult

      include MsRestAzure

      # @return [DataMigrationResultCode] Result code of the data migration.
      # Possible values include: 'Initial', 'Completed',
      # 'ObjectNotExistsInSource', 'ObjectNotExistsInTarget',
      # 'TargetObjectIsInaccessible', 'FatalError'
      attr_accessor :result_code

      # @return [String] Name of the source table
      attr_accessor :source_name

      # @return [String] Name of the target table
      attr_accessor :target_name

      # @return [Integer] Number of rows in the source table
      attr_accessor :source_row_count

      # @return [Integer] Number of rows in the target table
      attr_accessor :target_row_count

      # @return [Float] Time taken to migrate the data
      attr_accessor :elapsed_time_in_miliseconds

      # @return [Array<DataMigrationError>] List of errors, if any, during
      # migration
      attr_accessor :errors


      #
      # Mapper for NonSqlDataMigrationTableResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NonSqlDataMigrationTableResult',
          type: {
            name: 'Composite',
            class_name: 'NonSqlDataMigrationTableResult',
            model_properties: {
              result_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resultCode',
                type: {
                  name: 'String'
                }
              },
              source_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourceName',
                type: {
                  name: 'String'
                }
              },
              target_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetName',
                type: {
                  name: 'String'
                }
              },
              source_row_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourceRowCount',
                type: {
                  name: 'Number'
                }
              },
              target_row_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetRowCount',
                type: {
                  name: 'Number'
                }
              },
              elapsed_time_in_miliseconds: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'elapsedTimeInMiliseconds',
                type: {
                  name: 'Double'
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataMigrationErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataMigrationError'
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
