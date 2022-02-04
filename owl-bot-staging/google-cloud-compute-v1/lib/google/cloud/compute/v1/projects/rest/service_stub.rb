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

require "google/cloud/compute/v1/compute_pb"

module Google
  module Cloud
    module Compute
      module V1
        module Projects
          module Rest
            ##
            # REST service stub for the Projects service.
            # service stub contains baseline method implementations
            # including transcoding, making the REST call and deserialing the response
            #
            class ServiceStub
              def initialize endpoint:, credentials:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials
              end

              ##
              # Baseline implementation for the disable_xpn_host REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DisableXpnHostProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def disable_xpn_host request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, query_string_params = transcode_disable_xpn_host_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the disable_xpn_host REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DisableXpnHostProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_disable_xpn_host_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/disableXpnHost"
                body = nil
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the disable_xpn_resource REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DisableXpnResourceProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def disable_xpn_resource request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_disable_xpn_resource_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the disable_xpn_resource REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DisableXpnResourceProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_disable_xpn_resource_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/disableXpnResource"
                body = request_pb.projects_disable_xpn_resource_request_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the enable_xpn_host REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::EnableXpnHostProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def enable_xpn_host request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, query_string_params = transcode_enable_xpn_host_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the enable_xpn_host REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::EnableXpnHostProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_enable_xpn_host_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/enableXpnHost"
                body = nil
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the enable_xpn_resource REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::EnableXpnResourceProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def enable_xpn_resource request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_enable_xpn_resource_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the enable_xpn_resource REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::EnableXpnResourceProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_enable_xpn_resource_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/enableXpnResource"
                body = request_pb.projects_enable_xpn_resource_request_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Project]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Project]
              #   A result object deserialized from the server's reply
              def get request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, _query_string_params = transcode_get_request request_pb
                response = @client_stub.make_get_request(
                  uri:     uri,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Project.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}"
                body = nil
                query_string_params = {}

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the get_xpn_host REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetXpnHostProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Project]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Project]
              #   A result object deserialized from the server's reply
              def get_xpn_host request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, _query_string_params = transcode_get_xpn_host_request request_pb
                response = @client_stub.make_get_request(
                  uri:     uri,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Project.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the get_xpn_host REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetXpnHostProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_xpn_host_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/getXpnHost"
                body = nil
                query_string_params = {}

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the get_xpn_resources REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetXpnResourcesProjectsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::ProjectsGetXpnResources]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::ProjectsGetXpnResources]
              #   A result object deserialized from the server's reply
              def get_xpn_resources request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, query_string_params = transcode_get_xpn_resources_request request_pb
                response = @client_stub.make_get_request(
                  uri:     uri,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::ProjectsGetXpnResources.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the get_xpn_resources REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetXpnResourcesProjectsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_xpn_resources_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/getXpnResources"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.has_filter?
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.has_max_results?
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.has_order_by?
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.has_page_token?
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.has_return_partial_success?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the list_xpn_hosts REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListXpnHostsProjectsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::XpnHostList]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::XpnHostList]
              #   A result object deserialized from the server's reply
              def list_xpn_hosts request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_list_xpn_hosts_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::XpnHostList.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the list_xpn_hosts REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListXpnHostsProjectsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list_xpn_hosts_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/listXpnHosts"
                body = request_pb.projects_list_xpn_hosts_request_resource.to_json
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.has_filter?
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.has_max_results?
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.has_order_by?
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.has_page_token?
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.has_return_partial_success?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the move_disk REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::MoveDiskProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def move_disk request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_move_disk_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the move_disk REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::MoveDiskProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_move_disk_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/moveDisk"
                body = request_pb.disk_move_request_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the move_instance REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::MoveInstanceProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def move_instance request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_move_instance_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the move_instance REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::MoveInstanceProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_move_instance_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/moveInstance"
                body = request_pb.instance_move_request_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the set_common_instance_metadata REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetCommonInstanceMetadataProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def set_common_instance_metadata request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_set_common_instance_metadata_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the set_common_instance_metadata REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetCommonInstanceMetadataProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_common_instance_metadata_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/setCommonInstanceMetadata"
                body = request_pb.metadata_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the set_default_network_tier REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetDefaultNetworkTierProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def set_default_network_tier request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_set_default_network_tier_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the set_default_network_tier REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetDefaultNetworkTierProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_default_network_tier_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/setDefaultNetworkTier"
                body = request_pb.projects_set_default_network_tier_request_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the set_usage_export_bucket REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetUsageExportBucketProjectRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def set_usage_export_bucket request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_set_usage_export_bucket_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the set_usage_export_bucket REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetUsageExportBucketProjectRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_usage_export_bucket_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/setUsageExportBucket"
                body = request_pb.usage_export_location_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end
            end
          end
        end
      end
    end
  end
end
