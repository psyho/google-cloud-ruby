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
        module BackendServices
          module Rest
            ##
            # REST service stub for the BackendServices service.
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
              # Baseline implementation for the add_signed_url_key REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AddSignedUrlKeyBackendServiceRequest]
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
              def add_signed_url_key request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_add_signed_url_key_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the aggregated_list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListBackendServicesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::BackendServiceAggregatedList]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::BackendServiceAggregatedList]
              #   A result object deserialized from the server's reply
              def aggregated_list request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_aggregated_list_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::BackendServiceAggregatedList.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteBackendServiceRequest]
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
              def delete request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_delete_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the delete_signed_url_key REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteSignedUrlKeyBackendServiceRequest]
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
              def delete_signed_url_key request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_delete_signed_url_key_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::BackendService]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::BackendService]
              #   A result object deserialized from the server's reply
              def get request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_get_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::BackendService.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the get_health REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetHealthBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::BackendServiceGroupHealth]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::BackendServiceGroupHealth]
              #   A result object deserialized from the server's reply
              def get_health request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_get_health_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::BackendServiceGroupHealth.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertBackendServiceRequest]
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
              def insert request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_insert_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListBackendServicesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::BackendServiceList]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::BackendServiceList]
              #   A result object deserialized from the server's reply
              def list request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_list_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::BackendServiceList.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the patch REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::PatchBackendServiceRequest]
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
              def patch request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_patch_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the set_edge_security_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetEdgeSecurityPolicyBackendServiceRequest]
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
              def set_edge_security_policy request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_set_edge_security_policy_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the set_security_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetSecurityPolicyBackendServiceRequest]
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
              def set_security_policy request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_set_security_policy_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the update REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::UpdateBackendServiceRequest]
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
              def update request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_update_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end


              private

              ##
              # @private
              #
              # GRPC transcoding helper method for the add_signed_url_key REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AddSignedUrlKeyBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_add_signed_url_key_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices/{backend_service}/addSignedUrlKey",
                                                          body: "signed_url_key_resource",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false],
                                                            ["backend_service", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the aggregated_list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListBackendServicesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_aggregated_list_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/compute/v1/projects/{project}/aggregated/backendServices",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_delete_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :delete,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices/{backend_service}",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false],
                                                            ["backend_service", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the delete_signed_url_key REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteSignedUrlKeyBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_delete_signed_url_key_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices/{backend_service}/deleteSignedUrlKey",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false],
                                                            ["backend_service", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices/{backend_service}",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false],
                                                            ["backend_service", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get_health REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetHealthBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_health_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices/{backend_service}/getHealth",
                                                          body: "resource_group_reference_resource",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false],
                                                            ["backend_service", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_insert_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices",
                                                          body: "backend_service_resource",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListBackendServicesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the patch REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::PatchBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_patch_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices/{backend_service}",
                                                          body: "backend_service_resource",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false],
                                                            ["backend_service", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the set_edge_security_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetEdgeSecurityPolicyBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_edge_security_policy_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices/{backend_service}/setEdgeSecurityPolicy",
                                                          body: "security_policy_reference_resource",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false],
                                                            ["backend_service", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the set_security_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetSecurityPolicyBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_security_policy_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices/{backend_service}/setSecurityPolicy",
                                                          body: "security_policy_reference_resource",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false],
                                                            ["backend_service", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the update REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::UpdateBackendServiceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_update_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :put,
                                                          uri_template: "/compute/v1/projects/{project}/global/backendServices/{backend_service}",
                                                          body: "backend_service_resource",
                                                          matches: [
                                                            ["project", %r{[^/]+}, false],
                                                            ["backend_service", %r{[^/]+}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end
            end
          end
        end
      end
    end
  end
end
