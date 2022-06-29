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
    module ApigeeRegistry
      module V1
        # An Api is a top-level description of an API.
        # Apis are produced by producers and are commitments to provide services.
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource name.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Human-meaningful name.
        # @!attribute [rw] description
        #   @return [::String]
        #     A detailed description.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation timestamp.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Last update timestamp.
        # @!attribute [rw] availability
        #   @return [::String]
        #     A user-definable description of the availability of this service.
        #     Format: free-form, but we expect single words that describe availability,
        #     e.g. "NONE", "TESTING", "PREVIEW", "GENERAL", "DEPRECATED", "SHUTDOWN".
        # @!attribute [rw] recommended_version
        #   @return [::String]
        #     The recommended version of the API.
        #     Format: apis/\\{api}/versions/\\{version}
        # @!attribute [rw] recommended_deployment
        #   @return [::String]
        #     The recommended deployment of the API.
        #     Format: apis/\\{api}/deployments/\\{deployment}
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels attach identifying metadata to resources. Identifying metadata can
        #     be used to filter list operations.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #     No more than 64 user labels can be associated with one resource (System
        #     labels are excluded).
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        #     System reserved label keys are prefixed with
        #     "apigeeregistry.googleapis.com/" and cannot be changed.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Annotations attach non-identifying metadata to resources.
        #
        #     Annotation keys and values are less restricted than those of labels, but
        #     should be generally used for small values of broad interest. Larger, topic-
        #     specific metadata should be stored in Artifacts.
        class Api
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

        # An ApiVersion describes a particular version of an API.
        # ApiVersions are what consumers actually use.
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource name.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Human-meaningful name.
        # @!attribute [rw] description
        #   @return [::String]
        #     A detailed description.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation timestamp.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Last update timestamp.
        # @!attribute [rw] state
        #   @return [::String]
        #     A user-definable description of the lifecycle phase of this API version.
        #     Format: free-form, but we expect single words that describe API maturity,
        #     e.g. "CONCEPT", "DESIGN", "DEVELOPMENT", "STAGING", "PRODUCTION",
        #     "DEPRECATED", "RETIRED".
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels attach identifying metadata to resources. Identifying metadata can
        #     be used to filter list operations.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #     No more than 64 user labels can be associated with one resource (System
        #     labels are excluded).
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        #     System reserved label keys are prefixed with
        #     "apigeeregistry.googleapis.com/" and cannot be changed.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Annotations attach non-identifying metadata to resources.
        #
        #     Annotation keys and values are less restricted than those of labels, but
        #     should be generally used for small values of broad interest. Larger, topic-
        #     specific metadata should be stored in Artifacts.
        class ApiVersion
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

        # An ApiSpec describes a version of an API in a structured way.
        # ApiSpecs provide formal descriptions that consumers can use to use a version.
        # ApiSpec resources are intended to be fully-resolved descriptions of an
        # ApiVersion. When specs consist of multiple files, these should be bundled
        # together (e.g. in a zip archive) and stored as a unit. Multiple specs can
        # exist to provide representations in different API description formats.
        # Synchronization of these representations would be provided by tooling and
        # background services.
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource name.
        # @!attribute [rw] filename
        #   @return [::String]
        #     A possibly-hierarchical name used to refer to the spec from other specs.
        # @!attribute [rw] description
        #   @return [::String]
        #     A detailed description.
        # @!attribute [r] revision_id
        #   @return [::String]
        #     Output only. Immutable. The revision ID of the spec.
        #     A new revision is committed whenever the spec contents are changed.
        #     The format is an 8-character hexadecimal string.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation timestamp; when the spec resource was created.
        # @!attribute [r] revision_create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Revision creation timestamp; when the represented revision was created.
        # @!attribute [r] revision_update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Last update timestamp: when the represented revision was last modified.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     A style (format) descriptor for this spec that is specified as a Media Type
        #     (https://en.wikipedia.org/wiki/Media_type). Possible values include
        #     "application/vnd.apigee.proto", "application/vnd.apigee.openapi", and
        #     "application/vnd.apigee.graphql", with possible suffixes representing
        #     compression types. These hypothetical names are defined in the vendor tree
        #     defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final.
        #     Content types can specify compression. Currently only GZip compression is
        #     supported (indicated with "+gzip").
        # @!attribute [r] size_bytes
        #   @return [::Integer]
        #     Output only. The size of the spec file in bytes. If the spec is gzipped, this is the
        #     size of the uncompressed spec.
        # @!attribute [r] hash
        #   @return [::String]
        #     Output only. A SHA-256 hash of the spec's contents. If the spec is gzipped, this is
        #     the hash of the uncompressed spec.
        # @!attribute [rw] source_uri
        #   @return [::String]
        #     The original source URI of the spec (if one exists).
        #     This is an external location that can be used for reference purposes
        #     but which may not be authoritative since this external resource may
        #     change after the spec is retrieved.
        # @!attribute [rw] contents
        #   @return [::String]
        #     Input only. The contents of the spec.
        #     Provided by API callers when specs are created or updated.
        #     To access the contents of a spec, use GetApiSpecContents.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels attach identifying metadata to resources. Identifying metadata can
        #     be used to filter list operations.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #     No more than 64 user labels can be associated with one resource (System
        #     labels are excluded).
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        #     System reserved label keys are prefixed with
        #     "apigeeregistry.googleapis.com/" and cannot be changed.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Annotations attach non-identifying metadata to resources.
        #
        #     Annotation keys and values are less restricted than those of labels, but
        #     should be generally used for small values of broad interest. Larger, topic-
        #     specific metadata should be stored in Artifacts.
        class ApiSpec
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

        # An ApiDeployment describes a service running at particular address that
        # provides a particular version of an API. ApiDeployments have revisions which
        # correspond to different configurations of a single deployment in time.
        # Revision identifiers should be updated whenever the served API spec or
        # endpoint address changes.
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource name.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Human-meaningful name.
        # @!attribute [rw] description
        #   @return [::String]
        #     A detailed description.
        # @!attribute [r] revision_id
        #   @return [::String]
        #     Output only. Immutable. The revision ID of the deployment.
        #     A new revision is committed whenever the deployment contents are changed.
        #     The format is an 8-character hexadecimal string.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation timestamp; when the deployment resource was created.
        # @!attribute [r] revision_create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Revision creation timestamp; when the represented revision was created.
        # @!attribute [r] revision_update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Last update timestamp: when the represented revision was last modified.
        # @!attribute [rw] api_spec_revision
        #   @return [::String]
        #     The full resource name (including revision id) of the spec of the API being
        #     served by the deployment. Changes to this value will update the revision.
        #     Format: apis/\\{api}/deployments/\\{deployment}
        # @!attribute [rw] endpoint_uri
        #   @return [::String]
        #     The address where the deployment is serving. Changes to this value will
        #     update the revision.
        # @!attribute [rw] external_channel_uri
        #   @return [::String]
        #     The address of the external channel of the API (e.g. the Developer
        #     Portal). Changes to this value will not affect the revision.
        # @!attribute [rw] intended_audience
        #   @return [::String]
        #     Text briefly identifying the intended audience of the API. Changes to this
        #     value will not affect the revision.
        # @!attribute [rw] access_guidance
        #   @return [::String]
        #     Text briefly describing how to access the endpoint. Changes to this value
        #     will not affect the revision.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels attach identifying metadata to resources. Identifying metadata can
        #     be used to filter list operations.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #     No more than 64 user labels can be associated with one resource (System
        #     labels are excluded).
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        #     System reserved label keys are prefixed with
        #     "apigeeregistry.googleapis.com/" and cannot be changed.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Annotations attach non-identifying metadata to resources.
        #
        #     Annotation keys and values are less restricted than those of labels, but
        #     should be generally used for small values of broad interest. Larger, topic-
        #     specific metadata should be stored in Artifacts.
        class ApiDeployment
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

        # Artifacts of resources. Artifacts are unique (single-value) per resource
        # and are used to store metadata that is too large or numerous to be stored
        # directly on the resource. Since artifacts are stored separately from parent
        # resources, they should generally be used for metadata that is needed
        # infrequently, i.e. not for display in primary views of the resource but
        # perhaps displayed or downloaded upon request. The ListArtifacts method
        # allows artifacts to be quickly enumerated and checked for presence without
        # downloading their (potentially-large) contents.
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource name.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation timestamp.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Last update timestamp.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     A content type specifier for the artifact.
        #     Content type specifiers are Media Types
        #     (https://en.wikipedia.org/wiki/Media_type) with a possible "schema"
        #     parameter that specifies a schema for the stored information.
        #     Content types can specify compression. Currently only GZip compression is
        #     supported (indicated with "+gzip").
        # @!attribute [r] size_bytes
        #   @return [::Integer]
        #     Output only. The size of the artifact in bytes. If the artifact is gzipped, this is
        #     the size of the uncompressed artifact.
        # @!attribute [r] hash
        #   @return [::String]
        #     Output only. A SHA-256 hash of the artifact's contents. If the artifact is gzipped,
        #     this is the hash of the uncompressed artifact.
        # @!attribute [rw] contents
        #   @return [::String]
        #     Input only. The contents of the artifact.
        #     Provided by API callers when artifacts are created or replaced.
        #     To access the contents of an artifact, use GetArtifactContents.
        class Artifact
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
