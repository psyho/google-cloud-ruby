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

# [START datalabeling_v1beta1_generated_DataLabelingService_DeleteAnnotationSpecSet_sync]
require "google/cloud/data_labeling/v1beta1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::DataLabeling::V1beta1::DataLabelingService::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::DataLabeling::V1beta1::DeleteAnnotationSpecSetRequest.new

# Call the delete_annotation_spec_set method.
result = client.delete_annotation_spec_set request

# The returned object is of type Google::Protobuf::Empty.
p result
# [END datalabeling_v1beta1_generated_DataLabelingService_DeleteAnnotationSpecSet_sync]
