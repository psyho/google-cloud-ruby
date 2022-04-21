# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/notebooks/v1/service.proto for package 'Google.Cloud.Notebooks.V1'
# Original file comments:
# Copyright 2021 Google LLC
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
require 'google/cloud/notebooks/v1/service_pb'

module Google
  module Cloud
    module Notebooks
      module V1
        module NotebookService
          # API v1 service for Cloud AI Platform Notebooks.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.notebooks.v1.NotebookService'

            # Lists instances in a given project and location.
            rpc :ListInstances, ::Google::Cloud::Notebooks::V1::ListInstancesRequest, ::Google::Cloud::Notebooks::V1::ListInstancesResponse
            # Gets details of a single Instance.
            rpc :GetInstance, ::Google::Cloud::Notebooks::V1::GetInstanceRequest, ::Google::Cloud::Notebooks::V1::Instance
            # Creates a new Instance in a given project and location.
            rpc :CreateInstance, ::Google::Cloud::Notebooks::V1::CreateInstanceRequest, ::Google::Longrunning::Operation
            # Registers an existing legacy notebook instance to the Notebooks API server.
            # Legacy instances are instances created with the legacy Compute Engine
            # calls. They are not manageable by the Notebooks API out of the box. This
            # call makes these instances manageable by the Notebooks API.
            rpc :RegisterInstance, ::Google::Cloud::Notebooks::V1::RegisterInstanceRequest, ::Google::Longrunning::Operation
            # Updates the guest accelerators of a single Instance.
            rpc :SetInstanceAccelerator, ::Google::Cloud::Notebooks::V1::SetInstanceAcceleratorRequest, ::Google::Longrunning::Operation
            # Updates the machine type of a single Instance.
            rpc :SetInstanceMachineType, ::Google::Cloud::Notebooks::V1::SetInstanceMachineTypeRequest, ::Google::Longrunning::Operation
            # Update Notebook Instance configurations.
            rpc :UpdateInstanceConfig, ::Google::Cloud::Notebooks::V1::UpdateInstanceConfigRequest, ::Google::Longrunning::Operation
            # Updates the Shielded instance configuration of a single Instance.
            rpc :UpdateShieldedInstanceConfig, ::Google::Cloud::Notebooks::V1::UpdateShieldedInstanceConfigRequest, ::Google::Longrunning::Operation
            # Replaces all the labels of an Instance.
            rpc :SetInstanceLabels, ::Google::Cloud::Notebooks::V1::SetInstanceLabelsRequest, ::Google::Longrunning::Operation
            # Add/update metadata items for an instance.
            rpc :UpdateInstanceMetadataItems, ::Google::Cloud::Notebooks::V1::UpdateInstanceMetadataItemsRequest, ::Google::Cloud::Notebooks::V1::UpdateInstanceMetadataItemsResponse
            # Deletes a single Instance.
            rpc :DeleteInstance, ::Google::Cloud::Notebooks::V1::DeleteInstanceRequest, ::Google::Longrunning::Operation
            # Starts a notebook instance.
            rpc :StartInstance, ::Google::Cloud::Notebooks::V1::StartInstanceRequest, ::Google::Longrunning::Operation
            # Stops a notebook instance.
            rpc :StopInstance, ::Google::Cloud::Notebooks::V1::StopInstanceRequest, ::Google::Longrunning::Operation
            # Resets a notebook instance.
            rpc :ResetInstance, ::Google::Cloud::Notebooks::V1::ResetInstanceRequest, ::Google::Longrunning::Operation
            # Allows notebook instances to
            # report their latest instance information to the Notebooks
            # API server. The server will merge the reported information to
            # the instance metadata store. Do not use this method directly.
            rpc :ReportInstanceInfo, ::Google::Cloud::Notebooks::V1::ReportInstanceInfoRequest, ::Google::Longrunning::Operation
            # Check if a notebook instance is upgradable.
            rpc :IsInstanceUpgradeable, ::Google::Cloud::Notebooks::V1::IsInstanceUpgradeableRequest, ::Google::Cloud::Notebooks::V1::IsInstanceUpgradeableResponse
            # Check if a notebook instance is healthy.
            rpc :GetInstanceHealth, ::Google::Cloud::Notebooks::V1::GetInstanceHealthRequest, ::Google::Cloud::Notebooks::V1::GetInstanceHealthResponse
            # Upgrades a notebook instance to the latest version.
            rpc :UpgradeInstance, ::Google::Cloud::Notebooks::V1::UpgradeInstanceRequest, ::Google::Longrunning::Operation
            # Rollbacks a notebook instance to the previous version.
            rpc :RollbackInstance, ::Google::Cloud::Notebooks::V1::RollbackInstanceRequest, ::Google::Longrunning::Operation
            # Allows notebook instances to
            # call this endpoint to upgrade themselves. Do not use this method directly.
            rpc :UpgradeInstanceInternal, ::Google::Cloud::Notebooks::V1::UpgradeInstanceInternalRequest, ::Google::Longrunning::Operation
            # Lists environments in a project.
            rpc :ListEnvironments, ::Google::Cloud::Notebooks::V1::ListEnvironmentsRequest, ::Google::Cloud::Notebooks::V1::ListEnvironmentsResponse
            # Gets details of a single Environment.
            rpc :GetEnvironment, ::Google::Cloud::Notebooks::V1::GetEnvironmentRequest, ::Google::Cloud::Notebooks::V1::Environment
            # Creates a new Environment.
            rpc :CreateEnvironment, ::Google::Cloud::Notebooks::V1::CreateEnvironmentRequest, ::Google::Longrunning::Operation
            # Deletes a single Environment.
            rpc :DeleteEnvironment, ::Google::Cloud::Notebooks::V1::DeleteEnvironmentRequest, ::Google::Longrunning::Operation
            # Lists schedules in a given project and location.
            rpc :ListSchedules, ::Google::Cloud::Notebooks::V1::ListSchedulesRequest, ::Google::Cloud::Notebooks::V1::ListSchedulesResponse
            # Gets details of schedule
            rpc :GetSchedule, ::Google::Cloud::Notebooks::V1::GetScheduleRequest, ::Google::Cloud::Notebooks::V1::Schedule
            # Deletes schedule and all underlying jobs
            rpc :DeleteSchedule, ::Google::Cloud::Notebooks::V1::DeleteScheduleRequest, ::Google::Longrunning::Operation
            # Creates a new Scheduled Notebook in a given project and location.
            rpc :CreateSchedule, ::Google::Cloud::Notebooks::V1::CreateScheduleRequest, ::Google::Longrunning::Operation
            # Triggers execution of an existing schedule.
            rpc :TriggerSchedule, ::Google::Cloud::Notebooks::V1::TriggerScheduleRequest, ::Google::Longrunning::Operation
            # Lists executions in a given project and location
            rpc :ListExecutions, ::Google::Cloud::Notebooks::V1::ListExecutionsRequest, ::Google::Cloud::Notebooks::V1::ListExecutionsResponse
            # Gets details of executions
            rpc :GetExecution, ::Google::Cloud::Notebooks::V1::GetExecutionRequest, ::Google::Cloud::Notebooks::V1::Execution
            # Deletes execution
            rpc :DeleteExecution, ::Google::Cloud::Notebooks::V1::DeleteExecutionRequest, ::Google::Longrunning::Operation
            # Creates a new Execution in a given project and location.
            rpc :CreateExecution, ::Google::Cloud::Notebooks::V1::CreateExecutionRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
