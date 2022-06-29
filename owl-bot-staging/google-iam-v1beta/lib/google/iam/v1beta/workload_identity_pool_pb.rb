# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/iam/v1beta/workload_identity_pool.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/iam/v1beta/workload_identity_pool.proto", :syntax => :proto3) do
    add_message "google.iam.v1beta.WorkloadIdentityPool" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :state, :enum, 4, "google.iam.v1beta.WorkloadIdentityPool.State"
      optional :disabled, :bool, 5
    end
    add_enum "google.iam.v1beta.WorkloadIdentityPool.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :DELETED, 2
    end
    add_message "google.iam.v1beta.WorkloadIdentityPoolProvider" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :state, :enum, 4, "google.iam.v1beta.WorkloadIdentityPoolProvider.State"
      optional :disabled, :bool, 5
      map :attribute_mapping, :string, :string, 6
      optional :attribute_condition, :string, 7
      oneof :provider_config do
        optional :aws, :message, 8, "google.iam.v1beta.WorkloadIdentityPoolProvider.Aws"
        optional :oidc, :message, 9, "google.iam.v1beta.WorkloadIdentityPoolProvider.Oidc"
      end
    end
    add_message "google.iam.v1beta.WorkloadIdentityPoolProvider.Aws" do
      optional :account_id, :string, 1
    end
    add_message "google.iam.v1beta.WorkloadIdentityPoolProvider.Oidc" do
      optional :issuer_uri, :string, 1
      repeated :allowed_audiences, :string, 2
    end
    add_enum "google.iam.v1beta.WorkloadIdentityPoolProvider.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :DELETED, 2
    end
    add_message "google.iam.v1beta.ListWorkloadIdentityPoolsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :show_deleted, :bool, 4
    end
    add_message "google.iam.v1beta.ListWorkloadIdentityPoolsResponse" do
      repeated :workload_identity_pools, :message, 1, "google.iam.v1beta.WorkloadIdentityPool"
      optional :next_page_token, :string, 2
    end
    add_message "google.iam.v1beta.GetWorkloadIdentityPoolRequest" do
      optional :name, :string, 1
    end
    add_message "google.iam.v1beta.CreateWorkloadIdentityPoolRequest" do
      optional :parent, :string, 1
      optional :workload_identity_pool, :message, 2, "google.iam.v1beta.WorkloadIdentityPool"
      optional :workload_identity_pool_id, :string, 3
    end
    add_message "google.iam.v1beta.UpdateWorkloadIdentityPoolRequest" do
      optional :workload_identity_pool, :message, 1, "google.iam.v1beta.WorkloadIdentityPool"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.iam.v1beta.DeleteWorkloadIdentityPoolRequest" do
      optional :name, :string, 1
    end
    add_message "google.iam.v1beta.UndeleteWorkloadIdentityPoolRequest" do
      optional :name, :string, 1
    end
    add_message "google.iam.v1beta.ListWorkloadIdentityPoolProvidersRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :show_deleted, :bool, 4
    end
    add_message "google.iam.v1beta.ListWorkloadIdentityPoolProvidersResponse" do
      repeated :workload_identity_pool_providers, :message, 1, "google.iam.v1beta.WorkloadIdentityPoolProvider"
      optional :next_page_token, :string, 2
    end
    add_message "google.iam.v1beta.GetWorkloadIdentityPoolProviderRequest" do
      optional :name, :string, 1
    end
    add_message "google.iam.v1beta.CreateWorkloadIdentityPoolProviderRequest" do
      optional :parent, :string, 1
      optional :workload_identity_pool_provider, :message, 2, "google.iam.v1beta.WorkloadIdentityPoolProvider"
      optional :workload_identity_pool_provider_id, :string, 3
    end
    add_message "google.iam.v1beta.UpdateWorkloadIdentityPoolProviderRequest" do
      optional :workload_identity_pool_provider, :message, 1, "google.iam.v1beta.WorkloadIdentityPoolProvider"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.iam.v1beta.DeleteWorkloadIdentityPoolProviderRequest" do
      optional :name, :string, 1
    end
    add_message "google.iam.v1beta.UndeleteWorkloadIdentityPoolProviderRequest" do
      optional :name, :string, 1
    end
    add_message "google.iam.v1beta.WorkloadIdentityPoolOperationMetadata" do
    end
    add_message "google.iam.v1beta.WorkloadIdentityPoolProviderOperationMetadata" do
    end
  end
end

module Google
  module Iam
    module V1beta
      WorkloadIdentityPool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.WorkloadIdentityPool").msgclass
      WorkloadIdentityPool::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.WorkloadIdentityPool.State").enummodule
      WorkloadIdentityPoolProvider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.WorkloadIdentityPoolProvider").msgclass
      WorkloadIdentityPoolProvider::Aws = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.WorkloadIdentityPoolProvider.Aws").msgclass
      WorkloadIdentityPoolProvider::Oidc = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.WorkloadIdentityPoolProvider.Oidc").msgclass
      WorkloadIdentityPoolProvider::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.WorkloadIdentityPoolProvider.State").enummodule
      ListWorkloadIdentityPoolsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.ListWorkloadIdentityPoolsRequest").msgclass
      ListWorkloadIdentityPoolsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.ListWorkloadIdentityPoolsResponse").msgclass
      GetWorkloadIdentityPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.GetWorkloadIdentityPoolRequest").msgclass
      CreateWorkloadIdentityPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.CreateWorkloadIdentityPoolRequest").msgclass
      UpdateWorkloadIdentityPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.UpdateWorkloadIdentityPoolRequest").msgclass
      DeleteWorkloadIdentityPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.DeleteWorkloadIdentityPoolRequest").msgclass
      UndeleteWorkloadIdentityPoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.UndeleteWorkloadIdentityPoolRequest").msgclass
      ListWorkloadIdentityPoolProvidersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.ListWorkloadIdentityPoolProvidersRequest").msgclass
      ListWorkloadIdentityPoolProvidersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.ListWorkloadIdentityPoolProvidersResponse").msgclass
      GetWorkloadIdentityPoolProviderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.GetWorkloadIdentityPoolProviderRequest").msgclass
      CreateWorkloadIdentityPoolProviderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.CreateWorkloadIdentityPoolProviderRequest").msgclass
      UpdateWorkloadIdentityPoolProviderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.UpdateWorkloadIdentityPoolProviderRequest").msgclass
      DeleteWorkloadIdentityPoolProviderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.DeleteWorkloadIdentityPoolProviderRequest").msgclass
      UndeleteWorkloadIdentityPoolProviderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.UndeleteWorkloadIdentityPoolProviderRequest").msgclass
      WorkloadIdentityPoolOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.WorkloadIdentityPoolOperationMetadata").msgclass
      WorkloadIdentityPoolProviderOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1beta.WorkloadIdentityPoolProviderOperationMetadata").msgclass
    end
  end
end
