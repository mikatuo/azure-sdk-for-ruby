# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_09_01
  module Models
    #
    # Response for ListNetworkWatchers API service call.
    #
    class NetworkWatcherListResult

      include MsRestAzure

      # @return [Array<NetworkWatcher>] List of network watcher resources.
      attr_accessor :value


      #
      # Mapper for NetworkWatcherListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkWatcherListResult',
          type: {
            name: 'Composite',
            class_name: 'NetworkWatcherListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkWatcherElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkWatcher'
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
