# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Properties for the task that gets TDE certificates in Base64 encoded
    # format.
    #
    class GetTdeCertificatesSqlTaskProperties < ProjectTaskProperties

      include MsRestAzure


      def initialize
        @taskType = "GetTDECertificates.Sql"
      end

      attr_accessor :taskType

      # @return [GetTdeCertificatesSqlTaskInput] Task input
      attr_accessor :input

      # @return [Array<GetTdeCertificatesSqlTaskOutput>] Task output. This is
      # ignored if submitted.
      attr_accessor :output


      #
      # Mapper for GetTdeCertificatesSqlTaskProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetTDECertificates.Sql',
          type: {
            name: 'Composite',
            class_name: 'GetTdeCertificatesSqlTaskProperties',
            model_properties: {
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
                      serialized_name: 'ODataErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ODataError'
                      }
                  }
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              commands: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'commands',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CommandPropertiesElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'commandType',
                        uber_parent: 'CommandProperties',
                        class_name: 'CommandProperties'
                      }
                  }
                }
              },
              taskType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'taskType',
                type: {
                  name: 'String'
                }
              },
              input: {
                client_side_validation: true,
                required: false,
                serialized_name: 'input',
                type: {
                  name: 'Composite',
                  class_name: 'GetTdeCertificatesSqlTaskInput'
                }
              },
              output: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'output',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GetTdeCertificatesSqlTaskOutputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GetTdeCertificatesSqlTaskOutput'
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
