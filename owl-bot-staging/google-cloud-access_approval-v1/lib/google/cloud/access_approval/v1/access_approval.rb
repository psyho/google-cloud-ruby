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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/access_approval/v1/version"

require "google/cloud/access_approval/v1/access_approval/credentials"
require "google/cloud/access_approval/v1/access_approval/client"

module Google
  module Cloud
    module AccessApproval
      module V1
        ##
        # This API allows a customer to manage accesses to cloud resources by
        # Google personnel. It defines the following resource model:
        #
        # - The API has a collection of
        #   {::Google::Cloud::AccessApproval::V1::ApprovalRequest ApprovalRequest}
        #   resources, named `approvalRequests/{approval_request_id}`
        # - The API has top-level settings per Project/Folder/Organization, named
        #   `accessApprovalSettings`
        #
        # The service also periodically emails a list of recipients, defined at the
        # Project/Folder/Organization level in the accessApprovalSettings, when there
        # is a pending ApprovalRequest for them to act on. The ApprovalRequests can
        # also optionally be published to a Cloud Pub/Sub topic owned by the customer
        # (for Beta, the Pub/Sub setup is managed manually).
        #
        # ApprovalRequests can be approved or dismissed. Google personel can only
        # access the indicated resource or resources if the request is approved
        # (subject to some exclusions:
        # https://cloud.google.com/access-approval/docs/overview#exclusions).
        #
        # Note: Using Access Approval functionality will mean that Google may not be
        # able to meet the SLAs for your chosen products, as any support response times
        # may be dramatically increased. As such the SLAs do not apply to any service
        # disruption to the extent impacted by Customer's use of Access Approval. Do
        # not enable Access Approval for projects where you may require high service
        # availability and rapid response by Google Cloud Support.
        #
        # After a request is approved or dismissed, no further action may be taken on
        # it. Requests with the requested_expiration in the past or with no activity
        # for 14 days are considered dismissed. When an approval expires, the request
        # is considered dismissed.
        #
        # If a request is not approved or dismissed, we call it pending.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/access_approval/v1/access_approval"
        #     client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new
        #
        module AccessApproval
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "access_approval", "helpers.rb"
require "google/cloud/access_approval/v1/access_approval/helpers" if ::File.file? helper_path
