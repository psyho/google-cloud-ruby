# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/baremetalsolution/v2/network.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/baremetalsolution/v2/network.proto", :syntax => :proto3) do
    add_message "google.cloud.baremetalsolution.v2.Network" do
      optional :name, :string, 5
      optional :id, :string, 10
      optional :type, :enum, 2, "google.cloud.baremetalsolution.v2.Network.Type"
      optional :ip_address, :string, 3
      repeated :mac_address, :string, 4
      optional :state, :enum, 6, "google.cloud.baremetalsolution.v2.Network.State"
      optional :vlan_id, :string, 7
      optional :cidr, :string, 8
      optional :vrf, :message, 9, "google.cloud.baremetalsolution.v2.VRF"
      map :labels, :string, :string, 11
      optional :services_cidr, :string, 12
      repeated :reservations, :message, 13, "google.cloud.baremetalsolution.v2.NetworkAddressReservation"
    end
    add_enum "google.cloud.baremetalsolution.v2.Network.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :CLIENT, 1
      value :PRIVATE, 2
    end
    add_enum "google.cloud.baremetalsolution.v2.Network.State" do
      value :STATE_UNSPECIFIED, 0
      value :PROVISIONING, 1
      value :PROVISIONED, 2
    end
    add_message "google.cloud.baremetalsolution.v2.NetworkAddressReservation" do
      optional :start_address, :string, 1
      optional :end_address, :string, 2
      optional :note, :string, 3
    end
    add_message "google.cloud.baremetalsolution.v2.VRF" do
      optional :name, :string, 1
      optional :state, :enum, 5, "google.cloud.baremetalsolution.v2.VRF.State"
      optional :qos_policy, :message, 6, "google.cloud.baremetalsolution.v2.VRF.QosPolicy"
      repeated :vlan_attachments, :message, 7, "google.cloud.baremetalsolution.v2.VRF.VlanAttachment"
    end
    add_message "google.cloud.baremetalsolution.v2.VRF.QosPolicy" do
      optional :bandwidth_gbps, :double, 1
    end
    add_message "google.cloud.baremetalsolution.v2.VRF.VlanAttachment" do
      optional :peer_vlan_id, :int64, 1
      optional :peer_ip, :string, 2
      optional :router_ip, :string, 3
    end
    add_enum "google.cloud.baremetalsolution.v2.VRF.State" do
      value :STATE_UNSPECIFIED, 0
      value :PROVISIONING, 1
      value :PROVISIONED, 2
    end
    add_message "google.cloud.baremetalsolution.v2.LogicalInterface" do
      repeated :logical_network_interfaces, :message, 1, "google.cloud.baremetalsolution.v2.LogicalInterface.LogicalNetworkInterface"
      optional :name, :string, 2
      optional :interface_index, :int32, 3
    end
    add_message "google.cloud.baremetalsolution.v2.LogicalInterface.LogicalNetworkInterface" do
      optional :network, :string, 1
      optional :ip_address, :string, 2
      optional :default_gateway, :bool, 3
      optional :network_type, :enum, 4, "google.cloud.baremetalsolution.v2.Network.Type"
      optional :id, :string, 5
    end
    add_message "google.cloud.baremetalsolution.v2.GetNetworkRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.baremetalsolution.v2.ListNetworksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.baremetalsolution.v2.ListNetworksResponse" do
      repeated :networks, :message, 1, "google.cloud.baremetalsolution.v2.Network"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.baremetalsolution.v2.UpdateNetworkRequest" do
      optional :network, :message, 1, "google.cloud.baremetalsolution.v2.Network"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.baremetalsolution.v2.NetworkUsage" do
      optional :network, :message, 1, "google.cloud.baremetalsolution.v2.Network"
      repeated :used_ips, :string, 2
    end
    add_message "google.cloud.baremetalsolution.v2.ListNetworkUsageRequest" do
      optional :location, :string, 1
    end
    add_message "google.cloud.baremetalsolution.v2.ListNetworkUsageResponse" do
      repeated :networks, :message, 1, "google.cloud.baremetalsolution.v2.NetworkUsage"
    end
  end
end

module Google
  module Cloud
    module BareMetalSolution
      module V2
        Network = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.Network").msgclass
        Network::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.Network.Type").enummodule
        Network::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.Network.State").enummodule
        NetworkAddressReservation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.NetworkAddressReservation").msgclass
        VRF = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VRF").msgclass
        VRF::QosPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VRF.QosPolicy").msgclass
        VRF::VlanAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VRF.VlanAttachment").msgclass
        VRF::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VRF.State").enummodule
        LogicalInterface = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.LogicalInterface").msgclass
        LogicalInterface::LogicalNetworkInterface = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.LogicalInterface.LogicalNetworkInterface").msgclass
        GetNetworkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.GetNetworkRequest").msgclass
        ListNetworksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListNetworksRequest").msgclass
        ListNetworksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListNetworksResponse").msgclass
        UpdateNetworkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.UpdateNetworkRequest").msgclass
        NetworkUsage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.NetworkUsage").msgclass
        ListNetworkUsageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListNetworkUsageRequest").msgclass
        ListNetworkUsageResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListNetworkUsageResponse").msgclass
      end
    end
  end
end
