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

require "helper"
require "gapic/rest"
require "google/cloud/compute/v1/compute_pb"
require "google/cloud/compute/v1/packet_mirrorings"


class ::Google::Cloud::Compute::V1::PacketMirrorings::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_aggregated_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::PacketMirroringAggregatedList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    include_all_scopes = true
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true

    aggregated_list_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :get, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    Gapic::Rest::ClientStub.stub :new, aggregated_list_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.aggregated_list({ filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.aggregated_list filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.aggregated_list ::Google::Cloud::Compute::V1::AggregatedListPacketMirroringsRequest.new(filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.aggregated_list({ filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.aggregated_list(::Google::Cloud::Compute::V1::AggregatedListPacketMirroringsRequest.new(filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, aggregated_list_client_stub.call_count
    end
  end

  def test_delete
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    packet_mirroring = "hello world"
    project = "hello world"
    region = "hello world"
    request_id = "hello world"

    delete_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :delete, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    Gapic::Rest::ClientStub.stub :new, delete_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.delete({ packet_mirroring: packet_mirroring, project: project, region: region, request_id: request_id }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.delete packet_mirroring: packet_mirroring, project: project, region: region, request_id: request_id do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.delete ::Google::Cloud::Compute::V1::DeletePacketMirroringRequest.new(packet_mirroring: packet_mirroring, project: project, region: region, request_id: request_id) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.delete({ packet_mirroring: packet_mirroring, project: project, region: region, request_id: request_id }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.delete(::Google::Cloud::Compute::V1::DeletePacketMirroringRequest.new(packet_mirroring: packet_mirroring, project: project, region: region, request_id: request_id), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, delete_client_stub.call_count
    end
  end

  def test_get
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::PacketMirroring.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    packet_mirroring = "hello world"
    project = "hello world"
    region = "hello world"

    get_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :get, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    Gapic::Rest::ClientStub.stub :new, get_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.get({ packet_mirroring: packet_mirroring, project: project, region: region }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.get packet_mirroring: packet_mirroring, project: project, region: region do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.get ::Google::Cloud::Compute::V1::GetPacketMirroringRequest.new(packet_mirroring: packet_mirroring, project: project, region: region) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.get({ packet_mirroring: packet_mirroring, project: project, region: region }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.get(::Google::Cloud::Compute::V1::GetPacketMirroringRequest.new(packet_mirroring: packet_mirroring, project: project, region: region), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, get_client_stub.call_count
    end
  end

  def test_insert
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    packet_mirroring_resource = {}
    project = "hello world"
    region = "hello world"
    request_id = "hello world"

    insert_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :post, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    Gapic::Rest::ClientStub.stub :new, insert_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.insert({ packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.insert packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.insert ::Google::Cloud::Compute::V1::InsertPacketMirroringRequest.new(packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.insert({ packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.insert(::Google::Cloud::Compute::V1::InsertPacketMirroringRequest.new(packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, insert_client_stub.call_count
    end
  end

  def test_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::PacketMirroringList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    region = "hello world"
    return_partial_success = true

    list_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :get, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    Gapic::Rest::ClientStub.stub :new, list_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.list filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.list ::Google::Cloud::Compute::V1::ListPacketMirroringsRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.list(::Google::Cloud::Compute::V1::ListPacketMirroringsRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, list_client_stub.call_count
    end
  end

  def test_patch
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    packet_mirroring = "hello world"
    packet_mirroring_resource = {}
    project = "hello world"
    region = "hello world"
    request_id = "hello world"

    patch_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :patch, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    Gapic::Rest::ClientStub.stub :new, patch_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.patch({ packet_mirroring: packet_mirroring, packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.patch packet_mirroring: packet_mirroring, packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.patch ::Google::Cloud::Compute::V1::PatchPacketMirroringRequest.new(packet_mirroring: packet_mirroring, packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.patch({ packet_mirroring: packet_mirroring, packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.patch(::Google::Cloud::Compute::V1::PatchPacketMirroringRequest.new(packet_mirroring: packet_mirroring, packet_mirroring_resource: packet_mirroring_resource, project: project, region: region, request_id: request_id), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, patch_client_stub.call_count
    end
  end

  def test_test_iam_permissions
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::TestPermissionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    region = "hello world"
    resource = "hello world"
    test_permissions_request_resource = {}

    test_iam_permissions_client_stub = ClientStub.new http_response do |verb, uri:, body:, params:, options:|
      assert_equal :post, verb

      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    Gapic::Rest::ClientStub.stub :new, test_iam_permissions_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.test_iam_permissions({ project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource }) do |result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.test_iam_permissions project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.test_iam_permissions ::Google::Cloud::Compute::V1::TestIamPermissionsPacketMirroringRequest.new(project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource) do |result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.test_iam_permissions({ project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource }, call_options) do |result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.test_iam_permissions(::Google::Cloud::Compute::V1::TestIamPermissionsPacketMirroringRequest.new(project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource), call_options) do |result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, test_iam_permissions_client_stub.call_count
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client::Configuration, config
  end
end
