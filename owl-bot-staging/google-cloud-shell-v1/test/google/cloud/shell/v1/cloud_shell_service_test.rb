# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "gapic/grpc/service_stub"

require "google/cloud/shell/v1/cloudshell_pb"
require "google/cloud/shell/v1/cloudshell_services_pb"
require "google/cloud/shell/v1/cloud_shell_service"

class ::Google::Cloud::Shell::V1::CloudShellService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_get_environment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Shell::V1::Environment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_environment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_environment, name
      assert_kind_of ::Google::Cloud::Shell::V1::GetEnvironmentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_environment_client_stub do
      # Create client
      client = ::Google::Cloud::Shell::V1::CloudShellService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_environment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_environment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_environment ::Google::Cloud::Shell::V1::GetEnvironmentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_environment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_environment(::Google::Cloud::Shell::V1::GetEnvironmentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_environment_client_stub.call_rpc_count
    end
  end

  def test_start_environment
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    access_token = "hello world"
    public_keys = ["hello world"]

    start_environment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :start_environment, name
      assert_kind_of ::Google::Cloud::Shell::V1::StartEnvironmentRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["access_token"]
      assert_equal ["hello world"], request["public_keys"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, start_environment_client_stub do
      # Create client
      client = ::Google::Cloud::Shell::V1::CloudShellService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.start_environment({ name: name, access_token: access_token, public_keys: public_keys }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.start_environment name: name, access_token: access_token, public_keys: public_keys do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.start_environment ::Google::Cloud::Shell::V1::StartEnvironmentRequest.new(name: name, access_token: access_token, public_keys: public_keys) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.start_environment({ name: name, access_token: access_token, public_keys: public_keys }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.start_environment(::Google::Cloud::Shell::V1::StartEnvironmentRequest.new(name: name, access_token: access_token, public_keys: public_keys), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, start_environment_client_stub.call_rpc_count
    end
  end

  def test_authorize_environment
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    access_token = "hello world"
    id_token = "hello world"
    expire_time = {}

    authorize_environment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :authorize_environment, name
      assert_kind_of ::Google::Cloud::Shell::V1::AuthorizeEnvironmentRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["access_token"]
      assert_equal "hello world", request["id_token"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["expire_time"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, authorize_environment_client_stub do
      # Create client
      client = ::Google::Cloud::Shell::V1::CloudShellService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.authorize_environment({ name: name, access_token: access_token, id_token: id_token, expire_time: expire_time }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.authorize_environment name: name, access_token: access_token, id_token: id_token, expire_time: expire_time do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.authorize_environment ::Google::Cloud::Shell::V1::AuthorizeEnvironmentRequest.new(name: name, access_token: access_token, id_token: id_token, expire_time: expire_time) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.authorize_environment({ name: name, access_token: access_token, id_token: id_token, expire_time: expire_time }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.authorize_environment(::Google::Cloud::Shell::V1::AuthorizeEnvironmentRequest.new(name: name, access_token: access_token, id_token: id_token, expire_time: expire_time), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, authorize_environment_client_stub.call_rpc_count
    end
  end

  def test_add_public_key
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"
    key = "hello world"

    add_public_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :add_public_key, name
      assert_kind_of ::Google::Cloud::Shell::V1::AddPublicKeyRequest, request
      assert_equal "hello world", request["environment"]
      assert_equal "hello world", request["key"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, add_public_key_client_stub do
      # Create client
      client = ::Google::Cloud::Shell::V1::CloudShellService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.add_public_key({ environment: environment, key: key }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.add_public_key environment: environment, key: key do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.add_public_key ::Google::Cloud::Shell::V1::AddPublicKeyRequest.new(environment: environment, key: key) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.add_public_key({ environment: environment, key: key }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.add_public_key(::Google::Cloud::Shell::V1::AddPublicKeyRequest.new(environment: environment, key: key), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, add_public_key_client_stub.call_rpc_count
    end
  end

  def test_remove_public_key
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    environment = "hello world"
    key = "hello world"

    remove_public_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :remove_public_key, name
      assert_kind_of ::Google::Cloud::Shell::V1::RemovePublicKeyRequest, request
      assert_equal "hello world", request["environment"]
      assert_equal "hello world", request["key"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, remove_public_key_client_stub do
      # Create client
      client = ::Google::Cloud::Shell::V1::CloudShellService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.remove_public_key({ environment: environment, key: key }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.remove_public_key environment: environment, key: key do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.remove_public_key ::Google::Cloud::Shell::V1::RemovePublicKeyRequest.new(environment: environment, key: key) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.remove_public_key({ environment: environment, key: key }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.remove_public_key(::Google::Cloud::Shell::V1::RemovePublicKeyRequest.new(environment: environment, key: key), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, remove_public_key_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Shell::V1::CloudShellService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Shell::V1::CloudShellService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Shell::V1::CloudShellService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Shell::V1::CloudShellService::Operations, client.operations_client
  end
end
