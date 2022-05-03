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


module Google
  module Cloud
    module Run
      module V2
        # RevisionTemplate describes the data a revision should have when created from
        # a template.
        # @!attribute [rw] revision
        #   @return [::String]
        #     The unique name for the revision. If this field is omitted, it will be
        #     automatically generated based on the Service name.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     KRM-style labels for the resource.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     KRM-style annotations for the resource.
        # @!attribute [rw] scaling
        #   @return [::Google::Cloud::Run::V2::RevisionScaling]
        #     Scaling settings for this Revision.
        # @!attribute [rw] vpc_access
        #   @return [::Google::Cloud::Run::V2::VpcAccess]
        #     VPC Access configuration to use for this Revision. For more information,
        #     visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
        # @!attribute [rw] container_concurrency
        #   @return [::Integer]
        #     Sets the maximum number of requests that each serving instance can receive.
        # @!attribute [rw] timeout
        #   @return [::Google::Protobuf::Duration]
        #     Max allowed time for an instance to respond to a request.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Email address of the IAM service account associated with the revision of
        #     the service. The service account represents the identity of the running
        #     revision, and determines what permissions the revision has. If not
        #     provided, the revision will use the project's default service account.
        # @!attribute [rw] containers
        #   @return [::Array<::Google::Cloud::Run::V2::Container>]
        #     Holds the single container that defines the unit of execution for this
        #     Revision.
        # @!attribute [rw] volumes
        #   @return [::Array<::Google::Cloud::Run::V2::Volume>]
        #     A list of Volumes to make available to containers.
        # @!attribute [rw] confidential
        #   @return [::Boolean]
        #     Enables Confidential Cloud Run in Revisions created using this template.
        # @!attribute [rw] execution_environment
        #   @return [::Google::Cloud::Run::V2::ExecutionEnvironment]
        #     The sandbox environment to host this Revision.
        # @!attribute [rw] encryption_key
        #   @return [::String]
        #     A reference to a customer managed encryption key (CMEK) to use to encrypt
        #     this container image. For more information, go to
        #     https://cloud.google.com/run/docs/securing/using-cmek
        class RevisionTemplate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
