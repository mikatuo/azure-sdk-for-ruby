# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # AFDOrigin properties needed for origin update.
    #
    class AFDOriginUpdateParameters

      include MsRestAzure

      # @return [ResourceReference] Resource reference to the Azure origin
      # resource.
      attr_accessor :azure_origin

      # @return [String] The address of the origin. Domain names, IPv4
      # addresses, and IPv6 addresses are supported.This should be unique
      # across all origins in an endpoint.
      attr_accessor :host_name

      # @return [Integer] The value of the HTTP port. Must be between 1 and
      # 65535.
      attr_accessor :http_port

      # @return [Integer] The value of the HTTPS port. Must be between 1 and
      # 65535.
      attr_accessor :https_port

      # @return [String] The host header value sent to the origin with each
      # request. If you leave this blank, the request hostname determines this
      # value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud
      # Services require this host header value to match the origin hostname by
      # default. This overrides the host header defined at Endpoint
      attr_accessor :origin_host_header

      # @return [Integer] Priority of origin in given origin group for load
      # balancing. Higher priorities will not be used for load balancing if any
      # lower priority origin is healthy.Must be between 1 and 5
      attr_accessor :priority

      # @return [Integer] Weight of the origin in given origin group for load
      # balancing. Must be between 1 and 1000
      attr_accessor :weight

      # @return The properties of the private link resource for private origin.
      attr_accessor :shared_private_link_resource

      # @return [EnabledState] Whether to enable health probes to be made
      # against backends defined under backendPools. Health probes can only be
      # disabled if there is a single enabled backend in single enabled backend
      # pool. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :enabled_state


      #
      # Mapper for AFDOriginUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AFDOriginUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'AFDOriginUpdateParameters',
            model_properties: {
              azure_origin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureOrigin',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
                }
              },
              host_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              http_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              https_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpsPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              origin_host_header: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originHostHeader',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priority',
                constraints: {
                  InclusiveMaximum: 5,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              weight: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.weight',
                constraints: {
                  InclusiveMaximum: 1000,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              shared_private_link_resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sharedPrivateLinkResource',
                type: {
                  name: 'Object'
                }
              },
              enabled_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabledState',
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
