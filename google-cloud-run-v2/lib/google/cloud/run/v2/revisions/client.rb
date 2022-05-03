# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/cloud/run/v2/revision_pb"

module Google
  module Cloud
    module Run
      module V2
        module Revisions
          ##
          # Client for the Revisions service.
          #
          # Cloud Run Revision Control Plane API.
          #
          class Client
            include Paths

            # @private
            attr_reader :revisions_stub

            ##
            # Configure the Revisions Client class.
            #
            # See {::Google::Cloud::Run::V2::Revisions::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all Revisions clients
            #   ::Google::Cloud::Run::V2::Revisions::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Run", "V2"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the Revisions Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Run::V2::Revisions::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new Revisions client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Run::V2::Revisions::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Run::V2::Revisions::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Revisions client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/run/v2/revision_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @operations_client = Operations.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
              end

              @revisions_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Run::V2::Revisions::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Cloud::Run::V2::Revisions::Operations]
            #
            attr_reader :operations_client

            # Service calls

            ##
            # Gets information about a Revision.
            #
            # @overload get_revision(request, options = nil)
            #   Pass arguments to `get_revision` via a request object, either of type
            #   {::Google::Cloud::Run::V2::GetRevisionRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Run::V2::GetRevisionRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_revision(name: nil)
            #   Pass arguments to `get_revision` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The full name of the Revision.
            #     Format:
            #     projects/\\{project}/locations/\\{location}/services/\\{service}/revisions/\\{revision}
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Run::V2::Revision]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Run::V2::Revision]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/run/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Run::V2::Revisions::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Run::V2::GetRevisionRequest.new
            #
            #   # Call the get_revision method.
            #   result = client.get_revision request
            #
            #   # The returned object is of type Google::Cloud::Run::V2::Revision.
            #   p result
            #
            def get_revision request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Run::V2::GetRevisionRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_revision.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Run::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_revision.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_revision.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @revisions_stub.call_rpc :get_revision, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # List Revisions from a given Service, or from a given location.
            #
            # @overload list_revisions(request, options = nil)
            #   Pass arguments to `list_revisions` via a request object, either of type
            #   {::Google::Cloud::Run::V2::ListRevisionsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Run::V2::ListRevisionsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_revisions(parent: nil, page_size: nil, page_token: nil, show_deleted: nil)
            #   Pass arguments to `list_revisions` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The Service from which the Revisions should be listed.
            #     To list all Revisions across Services, use "-" instead of Service name.
            #     Format:
            #     projects/\\{project}/locations/\\{location}/services/\\{service}
            #   @param page_size [::Integer]
            #     Maximum number of revisions to return in this call.
            #   @param page_token [::String]
            #     A page token received from a previous call to ListRevisions.
            #     All other parameters must match.
            #   @param show_deleted [::Boolean]
            #     If true, returns deleted (but unexpired) resources along with active ones.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Run::V2::Revision>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::Run::V2::Revision>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/run/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Run::V2::Revisions::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Run::V2::ListRevisionsRequest.new
            #
            #   # Call the list_revisions method.
            #   result = client.list_revisions request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can
            #   # iterate over all elements by calling #each, and the enumerable
            #   # will lazily make API calls to fetch subsequent pages. Other
            #   # methods are also available for managing paging directly.
            #   result.each do |response|
            #     # Each element is of type ::Google::Cloud::Run::V2::Revision.
            #     p response
            #   end
            #
            def list_revisions request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Run::V2::ListRevisionsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_revisions.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Run::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_revisions.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_revisions.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @revisions_stub.call_rpc :list_revisions, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @revisions_stub, :list_revisions, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Delete a Revision.
            #
            # @overload delete_revision(request, options = nil)
            #   Pass arguments to `delete_revision` via a request object, either of type
            #   {::Google::Cloud::Run::V2::DeleteRevisionRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Run::V2::DeleteRevisionRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload delete_revision(name: nil, validate_only: nil, etag: nil)
            #   Pass arguments to `delete_revision` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the Revision to delete.
            #     Format:
            #     projects/\\{project}/locations/\\{location}/services/\\{service}/revisions/\\{revision}
            #   @param validate_only [::Boolean]
            #     Indicates that the request should be validated without actually
            #     deleting any resources.
            #   @param etag [::String]
            #     A system-generated fingerprint for this version of the
            #     resource. This may be used to detect modification conflict during updates.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/run/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Run::V2::Revisions::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Run::V2::DeleteRevisionRequest.new
            #
            #   # Call the delete_revision method.
            #   result = client.delete_revision request
            #
            #   # The returned object is of type Gapic::Operation. You can use this
            #   # object to check the status of an operation, cancel it, or wait
            #   # for results. Here is how to block until completion:
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "Error!"
            #   end
            #
            def delete_revision request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Run::V2::DeleteRevisionRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.delete_revision.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Run::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.delete_revision.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.delete_revision.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @revisions_stub.call_rpc :delete_revision, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the Revisions API.
            #
            # This class represents the configuration for Revisions,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Run::V2::Revisions::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # get_revision to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Run::V2::Revisions::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.get_revision.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Run::V2::Revisions::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.get_revision.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"run.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "run.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the Revisions API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `get_revision`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_revision
                ##
                # RPC-specific configuration for `list_revisions`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_revisions
                ##
                # RPC-specific configuration for `delete_revision`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :delete_revision

                # @private
                def initialize parent_rpcs = nil
                  get_revision_config = parent_rpcs.get_revision if parent_rpcs.respond_to? :get_revision
                  @get_revision = ::Gapic::Config::Method.new get_revision_config
                  list_revisions_config = parent_rpcs.list_revisions if parent_rpcs.respond_to? :list_revisions
                  @list_revisions = ::Gapic::Config::Method.new list_revisions_config
                  delete_revision_config = parent_rpcs.delete_revision if parent_rpcs.respond_to? :delete_revision
                  @delete_revision = ::Gapic::Config::Method.new delete_revision_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
