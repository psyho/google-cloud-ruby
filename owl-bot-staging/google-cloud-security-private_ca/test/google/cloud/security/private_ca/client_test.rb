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
require "google/cloud/security/private_ca"
require "gapic/common"
require "gapic/grpc"

class Google::Cloud::Security::PrivateCA::ClientConstructionMinitest < Minitest::Test
  def test_certificate_authority_service
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Security::PrivateCA.certificate_authority_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Security::PrivateCA::V1::CertificateAuthorityService::Client, client
    end
  end

  def test_locations
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Security::PrivateCA.locations do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Security::PrivateCA::V1::Locations::Client, client
    end
  end

  def test_iam_policy
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Security::PrivateCA.iam_policy do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Security::PrivateCA::V1::IAMPolicy::Client, client
    end
  end
end
