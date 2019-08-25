# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  #
  # A service client - single point of access to the REST API.
  #
  class NetworkManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The subscription credentials which uniquely identify the
    # Microsoft Azure subscription. The subscription ID forms part of the URI
    # for every service call.
    attr_accessor :subscription_id

    # @return [String] Client API version.
    attr_reader :api_version

    # @return [String] Client API version.
    attr_accessor :api_version1

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [ApplicationGateways] application_gateways
    attr_reader :application_gateways

    # @return [ApplicationSecurityGroups] application_security_groups
    attr_reader :application_security_groups

    # @return [AvailableDelegations] available_delegations
    attr_reader :available_delegations

    # @return [AvailableResourceGroupDelegations]
    # available_resource_group_delegations
    attr_reader :available_resource_group_delegations

    # @return [AzureFirewalls] azure_firewalls
    attr_reader :azure_firewalls

    # @return [AzureFirewallFqdnTags] azure_firewall_fqdn_tags
    attr_reader :azure_firewall_fqdn_tags

    # @return [BastionHosts] bastion_hosts
    attr_reader :bastion_hosts

    # @return [DdosCustomPolicies] ddos_custom_policies
    attr_reader :ddos_custom_policies

    # @return [DdosProtectionPlans] ddos_protection_plans
    attr_reader :ddos_protection_plans

    # @return [AvailableEndpointServices] available_endpoint_services
    attr_reader :available_endpoint_services

    # @return [ExpressRouteCircuitAuthorizations]
    # express_route_circuit_authorizations
    attr_reader :express_route_circuit_authorizations

    # @return [ExpressRouteCircuitPeerings] express_route_circuit_peerings
    attr_reader :express_route_circuit_peerings

    # @return [ExpressRouteCircuitConnections]
    # express_route_circuit_connections
    attr_reader :express_route_circuit_connections

    # @return [PeerExpressRouteCircuitConnections]
    # peer_express_route_circuit_connections
    attr_reader :peer_express_route_circuit_connections

    # @return [ExpressRouteCircuits] express_route_circuits
    attr_reader :express_route_circuits

    # @return [ExpressRouteServiceProviders] express_route_service_providers
    attr_reader :express_route_service_providers

    # @return [ExpressRouteCrossConnections] express_route_cross_connections
    attr_reader :express_route_cross_connections

    # @return [ExpressRouteCrossConnectionPeerings]
    # express_route_cross_connection_peerings
    attr_reader :express_route_cross_connection_peerings

    # @return [ExpressRouteGateways] express_route_gateways
    attr_reader :express_route_gateways

    # @return [ExpressRouteConnections] express_route_connections
    attr_reader :express_route_connections

    # @return [ExpressRoutePortsLocations] express_route_ports_locations
    attr_reader :express_route_ports_locations

    # @return [ExpressRoutePorts] express_route_ports
    attr_reader :express_route_ports

    # @return [ExpressRouteLinks] express_route_links
    attr_reader :express_route_links

    # @return [FirewallPolicies] firewall_policies
    attr_reader :firewall_policies

    # @return [FirewallPolicyRuleGroups] firewall_policy_rule_groups
    attr_reader :firewall_policy_rule_groups

    # @return [LoadBalancers] load_balancers
    attr_reader :load_balancers

    # @return [LoadBalancerBackendAddressPools]
    # load_balancer_backend_address_pools
    attr_reader :load_balancer_backend_address_pools

    # @return [LoadBalancerFrontendIPConfigurations]
    # load_balancer_frontend_ipconfigurations
    attr_reader :load_balancer_frontend_ipconfigurations

    # @return [InboundNatRules] inbound_nat_rules
    attr_reader :inbound_nat_rules

    # @return [LoadBalancerLoadBalancingRules]
    # load_balancer_load_balancing_rules
    attr_reader :load_balancer_load_balancing_rules

    # @return [LoadBalancerOutboundRules] load_balancer_outbound_rules
    attr_reader :load_balancer_outbound_rules

    # @return [LoadBalancerNetworkInterfaces] load_balancer_network_interfaces
    attr_reader :load_balancer_network_interfaces

    # @return [LoadBalancerProbes] load_balancer_probes
    attr_reader :load_balancer_probes

    # @return [NatGateways] nat_gateways
    attr_reader :nat_gateways

    # @return [NetworkInterfaces] network_interfaces
    attr_reader :network_interfaces

    # @return [NetworkInterfaceIPConfigurations]
    # network_interface_ipconfigurations
    attr_reader :network_interface_ipconfigurations

    # @return [NetworkInterfaceLoadBalancers] network_interface_load_balancers
    attr_reader :network_interface_load_balancers

    # @return [NetworkInterfaceTapConfigurations]
    # network_interface_tap_configurations
    attr_reader :network_interface_tap_configurations

    # @return [NetworkProfiles] network_profiles
    attr_reader :network_profiles

    # @return [NetworkSecurityGroups] network_security_groups
    attr_reader :network_security_groups

    # @return [SecurityRules] security_rules
    attr_reader :security_rules

    # @return [DefaultSecurityRules] default_security_rules
    attr_reader :default_security_rules

    # @return [NetworkWatchers] network_watchers
    attr_reader :network_watchers

    # @return [PacketCaptures] packet_captures
    attr_reader :packet_captures

    # @return [ConnectionMonitors] connection_monitors
    attr_reader :connection_monitors

    # @return [Operations] operations
    attr_reader :operations

    # @return [PrivateEndpoints] private_endpoints
    attr_reader :private_endpoints

    # @return [AvailablePrivateEndpointTypes] available_private_endpoint_types
    attr_reader :available_private_endpoint_types

    # @return [PrivateLinkServices] private_link_services
    attr_reader :private_link_services

    # @return [PublicIPAddresses] public_ipaddresses
    attr_reader :public_ipaddresses

    # @return [PublicIPPrefixes] public_ipprefixes
    attr_reader :public_ipprefixes

    # @return [RouteFilters] route_filters
    attr_reader :route_filters

    # @return [RouteFilterRules] route_filter_rules
    attr_reader :route_filter_rules

    # @return [RouteTables] route_tables
    attr_reader :route_tables

    # @return [Routes] routes
    attr_reader :routes

    # @return [BgpServiceCommunities] bgp_service_communities
    attr_reader :bgp_service_communities

    # @return [ServiceEndpointPolicies] service_endpoint_policies
    attr_reader :service_endpoint_policies

    # @return [ServiceEndpointPolicyDefinitions]
    # service_endpoint_policy_definitions
    attr_reader :service_endpoint_policy_definitions

    # @return [ServiceTags] service_tags
    attr_reader :service_tags

    # @return [Usages] usages
    attr_reader :usages

    # @return [VirtualNetworks] virtual_networks
    attr_reader :virtual_networks

    # @return [Subnets] subnets
    attr_reader :subnets

    # @return [ResourceNavigationLinks] resource_navigation_links
    attr_reader :resource_navigation_links

    # @return [ServiceAssociationLinks] service_association_links
    attr_reader :service_association_links

    # @return [VirtualNetworkPeerings] virtual_network_peerings
    attr_reader :virtual_network_peerings

    # @return [VirtualNetworkGateways] virtual_network_gateways
    attr_reader :virtual_network_gateways

    # @return [VirtualNetworkGatewayConnections]
    # virtual_network_gateway_connections
    attr_reader :virtual_network_gateway_connections

    # @return [LocalNetworkGateways] local_network_gateways
    attr_reader :local_network_gateways

    # @return [VirtualNetworkTaps] virtual_network_taps
    attr_reader :virtual_network_taps

    # @return [VirtualWans] virtual_wans
    attr_reader :virtual_wans

    # @return [VpnSites] vpn_sites
    attr_reader :vpn_sites

    # @return [VpnSiteLinks] vpn_site_links
    attr_reader :vpn_site_links

    # @return [VpnSitesConfiguration] vpn_sites_configuration
    attr_reader :vpn_sites_configuration

    # @return [VirtualHubs] virtual_hubs
    attr_reader :virtual_hubs

    # @return [HubVirtualNetworkConnections] hub_virtual_network_connections
    attr_reader :hub_virtual_network_connections

    # @return [VpnGateways] vpn_gateways
    attr_reader :vpn_gateways

    # @return [VpnConnections] vpn_connections
    attr_reader :vpn_connections

    # @return [VpnSiteLinkConnections] vpn_site_link_connections
    attr_reader :vpn_site_link_connections

    # @return [VpnLinkConnections] vpn_link_connections
    attr_reader :vpn_link_connections

    # @return [P2sVpnServerConfigurations] p2s_vpn_server_configurations
    attr_reader :p2s_vpn_server_configurations

    # @return [P2sVpnGateways] p2s_vpn_gateways
    attr_reader :p2s_vpn_gateways

    # @return [WebApplicationFirewallPolicies]
    # web_application_firewall_policies
    attr_reader :web_application_firewall_policies

    #
    # Creates initializes a new instance of the NetworkManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @application_gateways = ApplicationGateways.new(self)
      @application_security_groups = ApplicationSecurityGroups.new(self)
      @available_delegations = AvailableDelegations.new(self)
      @available_resource_group_delegations = AvailableResourceGroupDelegations.new(self)
      @azure_firewalls = AzureFirewalls.new(self)
      @azure_firewall_fqdn_tags = AzureFirewallFqdnTags.new(self)
      @bastion_hosts = BastionHosts.new(self)
      @ddos_custom_policies = DdosCustomPolicies.new(self)
      @ddos_protection_plans = DdosProtectionPlans.new(self)
      @available_endpoint_services = AvailableEndpointServices.new(self)
      @express_route_circuit_authorizations = ExpressRouteCircuitAuthorizations.new(self)
      @express_route_circuit_peerings = ExpressRouteCircuitPeerings.new(self)
      @express_route_circuit_connections = ExpressRouteCircuitConnections.new(self)
      @peer_express_route_circuit_connections = PeerExpressRouteCircuitConnections.new(self)
      @express_route_circuits = ExpressRouteCircuits.new(self)
      @express_route_service_providers = ExpressRouteServiceProviders.new(self)
      @express_route_cross_connections = ExpressRouteCrossConnections.new(self)
      @express_route_cross_connection_peerings = ExpressRouteCrossConnectionPeerings.new(self)
      @express_route_gateways = ExpressRouteGateways.new(self)
      @express_route_connections = ExpressRouteConnections.new(self)
      @express_route_ports_locations = ExpressRoutePortsLocations.new(self)
      @express_route_ports = ExpressRoutePorts.new(self)
      @express_route_links = ExpressRouteLinks.new(self)
      @firewall_policies = FirewallPolicies.new(self)
      @firewall_policy_rule_groups = FirewallPolicyRuleGroups.new(self)
      @load_balancers = LoadBalancers.new(self)
      @load_balancer_backend_address_pools = LoadBalancerBackendAddressPools.new(self)
      @load_balancer_frontend_ipconfigurations = LoadBalancerFrontendIPConfigurations.new(self)
      @inbound_nat_rules = InboundNatRules.new(self)
      @load_balancer_load_balancing_rules = LoadBalancerLoadBalancingRules.new(self)
      @load_balancer_outbound_rules = LoadBalancerOutboundRules.new(self)
      @load_balancer_network_interfaces = LoadBalancerNetworkInterfaces.new(self)
      @load_balancer_probes = LoadBalancerProbes.new(self)
      @nat_gateways = NatGateways.new(self)
      @network_interfaces = NetworkInterfaces.new(self)
      @network_interface_ipconfigurations = NetworkInterfaceIPConfigurations.new(self)
      @network_interface_load_balancers = NetworkInterfaceLoadBalancers.new(self)
      @network_interface_tap_configurations = NetworkInterfaceTapConfigurations.new(self)
      @network_profiles = NetworkProfiles.new(self)
      @network_security_groups = NetworkSecurityGroups.new(self)
      @security_rules = SecurityRules.new(self)
      @default_security_rules = DefaultSecurityRules.new(self)
      @network_watchers = NetworkWatchers.new(self)
      @packet_captures = PacketCaptures.new(self)
      @connection_monitors = ConnectionMonitors.new(self)
      @operations = Operations.new(self)
      @private_endpoints = PrivateEndpoints.new(self)
      @available_private_endpoint_types = AvailablePrivateEndpointTypes.new(self)
      @private_link_services = PrivateLinkServices.new(self)
      @public_ipaddresses = PublicIPAddresses.new(self)
      @public_ipprefixes = PublicIPPrefixes.new(self)
      @route_filters = RouteFilters.new(self)
      @route_filter_rules = RouteFilterRules.new(self)
      @route_tables = RouteTables.new(self)
      @routes = Routes.new(self)
      @bgp_service_communities = BgpServiceCommunities.new(self)
      @service_endpoint_policies = ServiceEndpointPolicies.new(self)
      @service_endpoint_policy_definitions = ServiceEndpointPolicyDefinitions.new(self)
      @service_tags = ServiceTags.new(self)
      @usages = Usages.new(self)
      @virtual_networks = VirtualNetworks.new(self)
      @subnets = Subnets.new(self)
      @resource_navigation_links = ResourceNavigationLinks.new(self)
      @service_association_links = ServiceAssociationLinks.new(self)
      @virtual_network_peerings = VirtualNetworkPeerings.new(self)
      @virtual_network_gateways = VirtualNetworkGateways.new(self)
      @virtual_network_gateway_connections = VirtualNetworkGatewayConnections.new(self)
      @local_network_gateways = LocalNetworkGateways.new(self)
      @virtual_network_taps = VirtualNetworkTaps.new(self)
      @virtual_wans = VirtualWans.new(self)
      @vpn_sites = VpnSites.new(self)
      @vpn_site_links = VpnSiteLinks.new(self)
      @vpn_sites_configuration = VpnSitesConfiguration.new(self)
      @virtual_hubs = VirtualHubs.new(self)
      @hub_virtual_network_connections = HubVirtualNetworkConnections.new(self)
      @vpn_gateways = VpnGateways.new(self)
      @vpn_connections = VpnConnections.new(self)
      @vpn_site_link_connections = VpnSiteLinkConnections.new(self)
      @vpn_link_connections = VpnLinkConnections.new(self)
      @p2s_vpn_server_configurations = P2sVpnServerConfigurations.new(self)
      @p2s_vpn_gateways = P2sVpnGateways.new(self)
      @web_application_firewall_policies = WebApplicationFirewallPolicies.new(self)
      @api_version = '2019-06-01'
      @api_version1 = '2017-03-30'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end

    #
    # Checks whether a domain name in the cloudapp.azure.com zone is available for
    # use.
    #
    # @param location [String] The location of the domain name.
    # @param domain_name_label [String] The domain name to be verified. It must
    # conform to the following regular expression: ^[a-z][a-z0-9-]{1,61}[a-z0-9]$.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DnsNameAvailabilityResult] operation results.
    #
    def check_dns_name_availability(location, domain_name_label, custom_headers:nil)
      response = check_dns_name_availability_async(location, domain_name_label, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Checks whether a domain name in the cloudapp.azure.com zone is available for
    # use.
    #
    # @param location [String] The location of the domain name.
    # @param domain_name_label [String] The domain name to be verified. It must
    # conform to the following regular expression: ^[a-z][a-z0-9-]{1,61}[a-z0-9]$.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_dns_name_availability_with_http_info(location, domain_name_label, custom_headers:nil)
      check_dns_name_availability_async(location, domain_name_label, custom_headers:custom_headers).value!
    end

    #
    # Checks whether a domain name in the cloudapp.azure.com zone is available for
    # use.
    #
    # @param location [String] The location of the domain name.
    # @param domain_name_label [String] The domain name to be verified. It must
    # conform to the following regular expression: ^[a-z][a-z0-9-]{1,61}[a-z0-9]$.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_dns_name_availability_async(location, domain_name_label, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'domain_name_label is nil' if domain_name_label.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/CheckDnsNameAvailability'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'subscriptionId' => subscription_id},
          query_params: {'domainNameLabel' => domain_name_label,'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2019_06_01::Models::DnsNameAvailabilityResult.mapper()
            result.body = self.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gives the supported security providers for the virtual wan.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN for which
    # supported security providers are needed.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VirtualWanSecurityProviders] operation results.
    #
    def supported_security_providers(resource_group_name, virtual_wanname, custom_headers:nil)
      response = supported_security_providers_async(resource_group_name, virtual_wanname, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gives the supported security providers for the virtual wan.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN for which
    # supported security providers are needed.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def supported_security_providers_with_http_info(resource_group_name, virtual_wanname, custom_headers:nil)
      supported_security_providers_async(resource_group_name, virtual_wanname, custom_headers:custom_headers).value!
    end

    #
    # Gives the supported security providers for the virtual wan.
    #
    # @param resource_group_name [String] The resource group name.
    # @param virtual_wanname [String] The name of the VirtualWAN for which
    # supported security providers are needed.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def supported_security_providers_async(resource_group_name, virtual_wanname, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'virtual_wanname is nil' if virtual_wanname.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualWans/{virtualWANName}/supportedSecurityProviders'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'virtualWANName' => virtual_wanname},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2019_06_01::Models::VirtualWanSecurityProviders.mapper()
            result.body = self.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_network'
        sdk_information = "#{sdk_information}/0.19.1"
        add_user_agent_information(sdk_information)
    end
  end
end
