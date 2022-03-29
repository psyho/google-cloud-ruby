# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gaming/v1/game_server_configs.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gaming/v1/common_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/gaming/v1/game_server_configs.proto", :syntax => :proto3) do
    add_message "google.cloud.gaming.v1.ListGameServerConfigsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.gaming.v1.ListGameServerConfigsResponse" do
      repeated :game_server_configs, :message, 1, "google.cloud.gaming.v1.GameServerConfig"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 4
    end
    add_message "google.cloud.gaming.v1.GetGameServerConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.gaming.v1.CreateGameServerConfigRequest" do
      optional :parent, :string, 1
      optional :config_id, :string, 2
      optional :game_server_config, :message, 3, "google.cloud.gaming.v1.GameServerConfig"
    end
    add_message "google.cloud.gaming.v1.DeleteGameServerConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.gaming.v1.ScalingConfig" do
      optional :name, :string, 1
      optional :fleet_autoscaler_spec, :string, 2
      repeated :selectors, :message, 4, "google.cloud.gaming.v1.LabelSelector"
      repeated :schedules, :message, 5, "google.cloud.gaming.v1.Schedule"
    end
    add_message "google.cloud.gaming.v1.FleetConfig" do
      optional :fleet_spec, :string, 1
      optional :name, :string, 2
    end
    add_message "google.cloud.gaming.v1.GameServerConfig" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      repeated :fleet_configs, :message, 5, "google.cloud.gaming.v1.FleetConfig"
      repeated :scaling_configs, :message, 6, "google.cloud.gaming.v1.ScalingConfig"
      optional :description, :string, 7
    end
  end
end

module Google
  module Cloud
    module Gaming
      module V1
        ListGameServerConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.ListGameServerConfigsRequest").msgclass
        ListGameServerConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.ListGameServerConfigsResponse").msgclass
        GetGameServerConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.GetGameServerConfigRequest").msgclass
        CreateGameServerConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.CreateGameServerConfigRequest").msgclass
        DeleteGameServerConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.DeleteGameServerConfigRequest").msgclass
        ScalingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.ScalingConfig").msgclass
        FleetConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.FleetConfig").msgclass
        GameServerConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.GameServerConfig").msgclass
      end
    end
  end
end
