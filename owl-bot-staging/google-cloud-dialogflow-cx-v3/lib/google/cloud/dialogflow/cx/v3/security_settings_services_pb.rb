# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/cx/v3/security_settings.proto for package 'Google.Cloud.Dialogflow.CX.V3'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/cx/v3/security_settings_pb'

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module SecuritySettingsService
            # Service for managing security settings for Dialogflow.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.dialogflow.cx.v3.SecuritySettingsService'

              # Create security settings in the specified location.
              rpc :CreateSecuritySettings, ::Google::Cloud::Dialogflow::CX::V3::CreateSecuritySettingsRequest, ::Google::Cloud::Dialogflow::CX::V3::SecuritySettings
              # Retrieves the specified [SecuritySettings][google.cloud.dialogflow.cx.v3.SecuritySettings].
              # The returned settings may be stale by up to 1 minute.
              rpc :GetSecuritySettings, ::Google::Cloud::Dialogflow::CX::V3::GetSecuritySettingsRequest, ::Google::Cloud::Dialogflow::CX::V3::SecuritySettings
              # Updates the specified [SecuritySettings][google.cloud.dialogflow.cx.v3.SecuritySettings].
              rpc :UpdateSecuritySettings, ::Google::Cloud::Dialogflow::CX::V3::UpdateSecuritySettingsRequest, ::Google::Cloud::Dialogflow::CX::V3::SecuritySettings
              # Returns the list of all security settings in the specified location.
              rpc :ListSecuritySettings, ::Google::Cloud::Dialogflow::CX::V3::ListSecuritySettingsRequest, ::Google::Cloud::Dialogflow::CX::V3::ListSecuritySettingsResponse
              # Deletes the specified [SecuritySettings][google.cloud.dialogflow.cx.v3.SecuritySettings].
              rpc :DeleteSecuritySettings, ::Google::Cloud::Dialogflow::CX::V3::DeleteSecuritySettingsRequest, ::Google::Protobuf::Empty
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
