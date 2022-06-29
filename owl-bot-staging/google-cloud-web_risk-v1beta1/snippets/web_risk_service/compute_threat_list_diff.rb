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

# [START webrisk_v1beta1_generated_WebRiskService_ComputeThreatListDiff_sync]
require "google/cloud/web_risk/v1beta1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::WebRisk::V1beta1::WebRiskService::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffRequest.new

# Call the compute_threat_list_diff method.
result = client.compute_threat_list_diff request

# The returned object is of type Google::Cloud::WebRisk::V1beta1::ComputeThreatListDiffResponse.
p result
# [END webrisk_v1beta1_generated_WebRiskService_ComputeThreatListDiff_sync]
