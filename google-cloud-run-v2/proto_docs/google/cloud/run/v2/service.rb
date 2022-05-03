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
        # Request message for creating a Service.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The location and project in which this service should be created.
        #     Format: projects/\\{projectnumber}/locations/\\{location}
        # @!attribute [rw] service
        #   @return [::Google::Cloud::Run::V2::Service]
        #     Required. The Service instance to create.
        # @!attribute [rw] service_id
        #   @return [::String]
        #     Required. The unique identifier for the Service. The name of the service becomes
        #     \\{parent}/services/\\{service_id}.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Indicates that the request should be validated and default values
        #     populated, without persisting the request or creating any resources.
        class CreateServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for updating a service.
        # @!attribute [rw] service
        #   @return [::Google::Cloud::Run::V2::Service]
        #     Required. The Service to be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to be updated.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Indicates that the request should be validated and default values
        #     populated, without persisting the request or updating any resources.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and if the Service does not exist, it will create a new
        #     one. Caller must have both create and update permissions for this call if
        #     this is set to true.
        class UpdateServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for retrieving a list of Services.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The location and project to list resources on.
        #     Location must be a valid GCP region, and may not be the "-" wildcard.
        #     Format: projects/\\{projectnumber}/locations/\\{location}
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of Services to return in this call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token received from a previous call to ListServices.
        #     All other parameters must match.
        # @!attribute [rw] show_deleted
        #   @return [::Boolean]
        #     If true, returns deleted (but unexpired) resources along with active ones.
        class ListServicesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message containing a list of Services.
        # @!attribute [rw] services
        #   @return [::Array<::Google::Cloud::Run::V2::Service>]
        #     The resulting list of Services.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token indicating there are more items than page_size. Use it in the next
        #     ListServices request to continue.
        class ListServicesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for obtaining a Service by its full name.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full name of the Service.
        #     Format: projects/\\{projectnumber}/locations/\\{location}/services/\\{service}
        class GetServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to delete a Service by its full name.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full name of the Service.
        #     Format: projects/\\{projectnumber}/locations/\\{location}/services/\\{service}
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Indicates that the request should be validated without actually
        #     deleting any resources.
        # @!attribute [rw] etag
        #   @return [::String]
        #     A system-generated fingerprint for this version of the
        #     resource. May be used to detect modification conflict during updates.
        class DeleteServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Service acts as a top-level container that manages a set of
        # configurations and revision templates which implement a network service.
        # Service exists to provide a singular abstraction which can be access
        # controlled, reasoned about, and which encapsulates software lifecycle
        # decisions such as rollout policy and team resource ownership.
        # @!attribute [rw] name
        #   @return [::String]
        #     The fully qualified name of this Service. In CreateServiceRequest, this
        #     field is ignored, and instead composed from CreateServiceRequest.parent and
        #     CreateServiceRequest.service_id.
        #
        #     Format:
        #     projects/\\{project}/locations/\\{location}/services/\\{service_id}
        # @!attribute [rw] description
        #   @return [::String]
        #     User-provided description of the Service. This field currently has a
        #     512-character limit.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server assigned unique identifier for the trigger. The value is a UUID4
        #     string and guaranteed to remain unchanged until the resource is deleted.
        # @!attribute [r] generation
        #   @return [::Integer]
        #     Output only. A number that monotonically increases every time the user
        #     modifies the desired state.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Map of string keys and values that can be used to organize and categorize
        #     objects.
        #     User-provided labels are shared with Google's billing system, so they can
        #     be used to filter, or break down billing charges by team, component,
        #     environment, state, etc. For more information, visit
        #     https://cloud.google.com/resource-manager/docs/creating-managing-labels or
        #     https://cloud.google.com/run/docs/configuring/labels
        #     Cloud Run will populate some labels with 'run.googleapis.com' or
        #     'serving.knative.dev' namespaces. Those labels are read-only, and user
        #     changes will not be preserved.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Unstructured key value map that may be set by external tools to store and
        #     arbitrary metadata. They are not queryable and should be preserved
        #     when modifying objects. Cloud Run will populate some annotations using
        #     'run.googleapis.com' or 'serving.knative.dev' namespaces. This field
        #     follows Kubernetes annotations' namespacing, limits, and rules. More info:
        #     https://kubernetes.io/docs/user-guide/annotations
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [r] delete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The deletion time.
        # @!attribute [r] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. For a deleted resource, the time after which it will be
        #     permamently deleted.
        # @!attribute [r] creator
        #   @return [::String]
        #     Output only. Email address of the authenticated creator.
        # @!attribute [r] last_modifier
        #   @return [::String]
        #     Output only. Email address of the last authenticated modifier.
        # @!attribute [rw] client
        #   @return [::String]
        #     Arbitrary identifier for the API client.
        # @!attribute [rw] client_version
        #   @return [::String]
        #     Arbitrary version identifier for the API client.
        # @!attribute [rw] ingress
        #   @return [::Google::Cloud::Run::V2::IngressTraffic]
        #     Provides the ingress settings for this Service. On output, returns the
        #     currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no
        #     revision is active.
        # @!attribute [rw] launch_stage
        #   @return [::Google::Api::LaunchStage]
        #     The launch stage as defined by [Google Cloud Platform
        #     Launch Stages](https://cloud.google.com/terms/launch-stages).
        #     Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA
        #     is assumed.
        # @!attribute [rw] binary_authorization
        #   @return [::Google::Cloud::Run::V2::BinaryAuthorization]
        #     Settings for the Binary Authorization feature.
        # @!attribute [rw] template
        #   @return [::Google::Cloud::Run::V2::RevisionTemplate]
        #     Required. The template used to create revisions for this Service.
        # @!attribute [rw] traffic
        #   @return [::Array<::Google::Cloud::Run::V2::TrafficTarget>]
        #     Specifies how to distribute traffic over a collection of Revisions
        #     belonging to the Service. If traffic is empty or not provided, defaults to
        #     100% traffic to the latest `Ready` Revision.
        # @!attribute [r] observed_generation
        #   @return [::Integer]
        #     Output only. The generation of this Service currently serving traffic. See comments in
        #     `reconciling` for additional information on reconciliation process in Cloud
        #     Run.
        # @!attribute [r] terminal_condition
        #   @return [::Google::Cloud::Run::V2::Condition]
        #     Output only. The Condition of this Service, containing its readiness status, and
        #     detailed error information in case it did not reach a serving state. See
        #     comments in `reconciling` for additional information on reconciliation
        #     process in Cloud Run.
        # @!attribute [r] conditions
        #   @return [::Array<::Google::Cloud::Run::V2::Condition>]
        #     Output only. The Conditions of all other associated sub-resources. They contain
        #     additional diagnostics information in case the Service does not reach its
        #     Serving state. See comments in `reconciling` for additional information on
        #     reconciliation process in Cloud Run.
        # @!attribute [r] latest_ready_revision
        #   @return [::String]
        #     Output only. Name of the latest revision that is serving traffic. See comments in
        #     `reconciling` for additional information on reconciliation process in Cloud
        #     Run.
        # @!attribute [r] latest_created_revision
        #   @return [::String]
        #     Output only. Name of the last created revision. See comments in `reconciling` for
        #     additional information on reconciliation process in Cloud Run.
        # @!attribute [r] traffic_statuses
        #   @return [::Array<::Google::Cloud::Run::V2::TrafficTargetStatus>]
        #     Output only. Detailed status information for corresponding traffic targets. See comments
        #     in `reconciling` for additional information on reconciliation process in
        #     Cloud Run.
        # @!attribute [r] uri
        #   @return [::String]
        #     Output only. The main URI in which this Service is serving traffic.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. Returns true if the Service is currently being acted upon by the system to
        #     bring it into the desired state.
        #
        #     When a new Service is created, or an existing one is updated, Cloud Run
        #     will asynchronously perform all necessary steps to bring the Service to the
        #     desired serving state. This process is called reconciliation.
        #     While reconciliation is in process, `observed_generation`,
        #     `latest_ready_revison`, `traffic_statuses`, and `uri` will have transient
        #     values that might mismatch the intended state: Once reconciliation is over
        #     (and this field is false), there are two possible outcomes: reconciliation
        #     succeeded and the serving state matches the Service, or there was an error,
        #     and reconciliation failed. This state can be found in
        #     `terminal_condition.state`.
        #
        #     If reconciliation succeeded, the following fields will match: `traffic` and
        #     `traffic_statuses`, `observed_generation` and `generation`,
        #     `latest_ready_revision` and `latest_created_revision`.
        #
        #     If reconciliation failed, `traffic_statuses`, `observed_generation`, and
        #     `latest_ready_revision` will have the state of the last serving revision,
        #     or empty for newly created Services. Additional information on the failure
        #     can be found in `terminal_condition` and `conditions`.
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. A system-generated fingerprint for this version of the
        #     resource. May be used to detect modification conflict during updates.
        class Service
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
