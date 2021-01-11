# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # CDN endpoint is the entity within a CDN profile containing configuration
    # information such as origin, protocol, content caching and delivery
    # behavior. The CDN endpoint uses the URL format
    # <endpointname>.azureedge.net.
    #
    class Endpoint < TrackedResource

      include MsRestAzure

      # @return [String] A directory path on the origin that CDN can use to
      # retrieve content from, e.g. contoso.cloudapp.net/originpath.
      attr_accessor :origin_path

      # @return [Array<String>] List of content types on which compression
      # applies. The value should be a valid MIME type.
      attr_accessor :content_types_to_compress

      # @return [String] The host header value sent to the origin with each
      # request. This property at Endpoint is only allowed when endpoint uses
      # single origin and can be overridden by the same property specified at
      # origin.If you leave this blank, the request hostname determines this
      # value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud
      # Services require this host header value to match the origin hostname by
      # default.
      attr_accessor :origin_host_header

      # @return [Boolean] Indicates whether content compression is enabled on
      # CDN. Default value is false. If compression is enabled, content will be
      # served as compressed if user requests for a compressed version. Content
      # won't be compressed on CDN when requested content is smaller than 1
      # byte or larger than 1 MB.
      attr_accessor :is_compression_enabled

      # @return [Boolean] Indicates whether HTTP traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_http_allowed

      # @return [Boolean] Indicates whether HTTPS traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_https_allowed

      # @return [QueryStringCachingBehavior] Defines how CDN caches requests
      # that include query strings. You can ignore any query strings when
      # caching, bypass caching to prevent requests that contain query strings
      # from being cached, or cache every request with a unique URL. Possible
      # values include: 'IgnoreQueryString', 'BypassCaching', 'UseQueryString',
      # 'NotSet'
      attr_accessor :query_string_caching_behavior

      # @return [OptimizationType] Specifies what scenario the customer wants
      # this CDN endpoint to optimize for, e.g. Download, Media services. With
      # this information, CDN can apply scenario driven optimization. Possible
      # values include: 'GeneralWebDelivery', 'GeneralMediaStreaming',
      # 'VideoOnDemandMediaStreaming', 'LargeFileDownload',
      # 'DynamicSiteAcceleration'
      attr_accessor :optimization_type

      # @return [String] Path to a file hosted on the origin which helps
      # accelerate delivery of the dynamic content and calculate the most
      # optimal routes for the CDN. This is relative to the origin path. This
      # property is only relevant when using a single origin.
      attr_accessor :probe_path

      # @return [Array<GeoFilter>] List of rules defining the user's geo access
      # within a CDN endpoint. Each geo filter defines an access rule to a
      # specified path or content, e.g. block APAC for path /pictures/
      attr_accessor :geo_filters

      # @return [ResourceReference] A reference to the origin group.
      attr_accessor :default_origin_group

      # @return [Array<UrlSigningKey>] List of keys used to validate the signed
      # URL hashes.
      attr_accessor :url_signing_keys

      # @return [EndpointPropertiesUpdateParametersDeliveryPolicy] A policy
      # that specifies the delivery rules to be used for an endpoint.
      attr_accessor :delivery_policy

      # @return
      # [EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink]
      # Defines the Web Application Firewall policy for the endpoint (if
      # applicable)
      attr_accessor :web_application_firewall_policy_link

      # @return [String] The host name of the endpoint structured as
      # {endpointName}.{DNSZone}, e.g. contoso.azureedge.net
      attr_accessor :host_name

      # @return [Array<DeepCreatedOrigin>] The source of the content being
      # delivered via CDN.
      attr_accessor :origins

      # @return [Array<DeepCreatedOriginGroup>] The origin groups comprising of
      # origins that are used for load balancing the traffic based on
      # availability.
      attr_accessor :origin_groups

      # @return [EndpointResourceState] Resource status of the endpoint.
      # Possible values include: 'Creating', 'Deleting', 'Running', 'Starting',
      # 'Stopped', 'Stopping'
      attr_accessor :resource_state

      # @return [String] Provisioning status of the endpoint.
      attr_accessor :provisioning_state


      #
      # Mapper for Endpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Endpoint',
          type: {
            name: 'Composite',
            class_name: 'Endpoint',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              origin_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originPath',
                type: {
                  name: 'String'
                }
              },
              content_types_to_compress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.contentTypesToCompress',
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
              origin_host_header: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originHostHeader',
                type: {
                  name: 'String'
                }
              },
              is_compression_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isCompressionEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_http_allowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isHttpAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              is_https_allowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isHttpsAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              query_string_caching_behavior: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.queryStringCachingBehavior',
                type: {
                  name: 'Enum',
                  module: 'QueryStringCachingBehavior'
                }
              },
              optimization_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.optimizationType',
                type: {
                  name: 'String'
                }
              },
              probe_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.probePath',
                type: {
                  name: 'String'
                }
              },
              geo_filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.geoFilters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GeoFilterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GeoFilter'
                      }
                  }
                }
              },
              default_origin_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultOriginGroup',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
                }
              },
              url_signing_keys: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.urlSigningKeys',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UrlSigningKeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UrlSigningKey'
                      }
                  }
                }
              },
              delivery_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deliveryPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'EndpointPropertiesUpdateParametersDeliveryPolicy'
                }
              },
              web_application_firewall_policy_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.webApplicationFirewallPolicyLink',
                type: {
                  name: 'Composite',
                  class_name: 'EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink'
                }
              },
              host_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              origins: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.origins',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeepCreatedOriginElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DeepCreatedOrigin'
                      }
                  }
                }
              },
              origin_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeepCreatedOriginGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DeepCreatedOriginGroup'
                      }
                  }
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
