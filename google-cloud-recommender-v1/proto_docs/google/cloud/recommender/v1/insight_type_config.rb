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
    module Recommender
      module V1
        # Configuration for an InsightType.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of insight type config.
        #     Eg,
        #     projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config
        # @!attribute [rw] insight_type_generation_config
        #   @return [::Google::Cloud::Recommender::V1::InsightTypeGenerationConfig]
        #     InsightTypeGenerationConfig which configures the generation of
        #     insights for this insight type.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Fingerprint of the InsightTypeConfig. Provides optimistic locking when
        #     updating.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Last time when the config was updated.
        # @!attribute [r] revision_id
        #   @return [::String]
        #     Output only. Immutable. The revision ID of the config.
        #     A new revision is committed whenever the config is changed in any way.
        #     The format is an 8-character hexadecimal string.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Allows clients to store small amounts of arbitrary data. Annotations must
        #     follow the Kubernetes syntax.
        #     The total size of all keys and values combined is limited to 256k.
        #     Key can have 2 segments: prefix (optional) and name (required),
        #     separated by a slash (/).
        #     Prefix must be a DNS subdomain.
        #     Name must be 63 characters or less, begin and end with alphanumerics,
        #     with dashes (-), underscores (_), dots (.), and alphanumerics between.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     A user-settable field to provide a human-readable name to be used in user
        #     interfaces.
        class InsightTypeConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A configuration to customize the generation of insights.
        # Eg, customizing the lookback period considered when generating a
        # insight.
        # @!attribute [rw] params
        #   @return [::Google::Protobuf::Struct]
        #     Parameters for this InsightTypeGenerationConfig. These configs can be used
        #     by or are applied to all subtypes.
        class InsightTypeGenerationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
