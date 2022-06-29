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

# [START cloudtrace_v2_generated_TraceService_BatchWriteSpans_sync]
require "google/cloud/trace/v2"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::Trace::V2::TraceService::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::Trace::V2::BatchWriteSpansRequest.new

# Call the batch_write_spans method.
result = client.batch_write_spans request

# The returned object is of type Google::Protobuf::Empty.
p result
# [END cloudtrace_v2_generated_TraceService_BatchWriteSpans_sync]
