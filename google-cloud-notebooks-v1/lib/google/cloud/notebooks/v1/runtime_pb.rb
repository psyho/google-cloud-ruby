# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v1/runtime.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/notebooks/v1/environment_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/notebooks/v1/runtime.proto", :syntax => :proto3) do
    add_message "google.cloud.notebooks.v1.Runtime" do
      optional :name, :string, 1
      optional :state, :enum, 3, "google.cloud.notebooks.v1.Runtime.State"
      optional :health_state, :enum, 4, "google.cloud.notebooks.v1.Runtime.HealthState"
      optional :access_config, :message, 5, "google.cloud.notebooks.v1.RuntimeAccessConfig"
      optional :software_config, :message, 6, "google.cloud.notebooks.v1.RuntimeSoftwareConfig"
      optional :metrics, :message, 7, "google.cloud.notebooks.v1.RuntimeMetrics"
      optional :create_time, :message, 20, "google.protobuf.Timestamp"
      optional :update_time, :message, 21, "google.protobuf.Timestamp"
      oneof :runtime_type do
        optional :virtual_machine, :message, 2, "google.cloud.notebooks.v1.VirtualMachine"
      end
    end
    add_enum "google.cloud.notebooks.v1.Runtime.State" do
      value :STATE_UNSPECIFIED, 0
      value :STARTING, 1
      value :PROVISIONING, 2
      value :ACTIVE, 3
      value :STOPPING, 4
      value :STOPPED, 5
      value :DELETING, 6
      value :UPGRADING, 7
      value :INITIALIZING, 8
    end
    add_enum "google.cloud.notebooks.v1.Runtime.HealthState" do
      value :HEALTH_STATE_UNSPECIFIED, 0
      value :HEALTHY, 1
      value :UNHEALTHY, 2
      value :AGENT_NOT_INSTALLED, 3
      value :AGENT_NOT_RUNNING, 4
    end
    add_message "google.cloud.notebooks.v1.RuntimeAcceleratorConfig" do
      optional :type, :enum, 1, "google.cloud.notebooks.v1.RuntimeAcceleratorConfig.AcceleratorType"
      optional :core_count, :int64, 2
    end
    add_enum "google.cloud.notebooks.v1.RuntimeAcceleratorConfig.AcceleratorType" do
      value :ACCELERATOR_TYPE_UNSPECIFIED, 0
      value :NVIDIA_TESLA_K80, 1
      value :NVIDIA_TESLA_P100, 2
      value :NVIDIA_TESLA_V100, 3
      value :NVIDIA_TESLA_P4, 4
      value :NVIDIA_TESLA_T4, 5
      value :NVIDIA_TESLA_A100, 6
      value :TPU_V2, 7
      value :TPU_V3, 8
      value :NVIDIA_TESLA_T4_VWS, 9
      value :NVIDIA_TESLA_P100_VWS, 10
      value :NVIDIA_TESLA_P4_VWS, 11
    end
    add_message "google.cloud.notebooks.v1.EncryptionConfig" do
      optional :kms_key, :string, 1
    end
    add_message "google.cloud.notebooks.v1.LocalDisk" do
      optional :auto_delete, :bool, 1
      optional :boot, :bool, 2
      optional :device_name, :string, 3
      repeated :guest_os_features, :message, 4, "google.cloud.notebooks.v1.LocalDisk.RuntimeGuestOsFeature"
      optional :index, :int32, 5
      optional :initialize_params, :message, 6, "google.cloud.notebooks.v1.LocalDiskInitializeParams"
      optional :interface, :string, 7
      optional :kind, :string, 8
      repeated :licenses, :string, 9
      optional :mode, :string, 10
      optional :source, :string, 11
      optional :type, :string, 12
    end
    add_message "google.cloud.notebooks.v1.LocalDisk.RuntimeGuestOsFeature" do
      optional :type, :string, 1
    end
    add_message "google.cloud.notebooks.v1.LocalDiskInitializeParams" do
      optional :description, :string, 1
      optional :disk_name, :string, 2
      optional :disk_size_gb, :int64, 3
      optional :disk_type, :enum, 4, "google.cloud.notebooks.v1.LocalDiskInitializeParams.DiskType"
      map :labels, :string, :string, 5
    end
    add_enum "google.cloud.notebooks.v1.LocalDiskInitializeParams.DiskType" do
      value :DISK_TYPE_UNSPECIFIED, 0
      value :PD_STANDARD, 1
      value :PD_SSD, 2
      value :PD_BALANCED, 3
      value :PD_EXTREME, 4
    end
    add_message "google.cloud.notebooks.v1.RuntimeAccessConfig" do
      optional :access_type, :enum, 1, "google.cloud.notebooks.v1.RuntimeAccessConfig.RuntimeAccessType"
      optional :runtime_owner, :string, 2
      optional :proxy_uri, :string, 3
    end
    add_enum "google.cloud.notebooks.v1.RuntimeAccessConfig.RuntimeAccessType" do
      value :RUNTIME_ACCESS_TYPE_UNSPECIFIED, 0
      value :SINGLE_USER, 1
      value :SERVICE_ACCOUNT, 2
    end
    add_message "google.cloud.notebooks.v1.RuntimeSoftwareConfig" do
      optional :notebook_upgrade_schedule, :string, 1
      proto3_optional :enable_health_monitoring, :bool, 2
      proto3_optional :idle_shutdown, :bool, 3
      optional :idle_shutdown_timeout, :int32, 4
      optional :install_gpu_driver, :bool, 5
      optional :custom_gpu_driver_path, :string, 6
      optional :post_startup_script, :string, 7
      repeated :kernels, :message, 8, "google.cloud.notebooks.v1.ContainerImage"
      proto3_optional :upgradeable, :bool, 9
    end
    add_message "google.cloud.notebooks.v1.RuntimeMetrics" do
      map :system_metrics, :string, :string, 1
    end
    add_message "google.cloud.notebooks.v1.RuntimeShieldedInstanceConfig" do
      optional :enable_secure_boot, :bool, 1
      optional :enable_vtpm, :bool, 2
      optional :enable_integrity_monitoring, :bool, 3
    end
    add_message "google.cloud.notebooks.v1.VirtualMachine" do
      optional :instance_name, :string, 1
      optional :instance_id, :string, 2
      optional :virtual_machine_config, :message, 3, "google.cloud.notebooks.v1.VirtualMachineConfig"
    end
    add_message "google.cloud.notebooks.v1.VirtualMachineConfig" do
      optional :zone, :string, 1
      optional :machine_type, :string, 2
      repeated :container_images, :message, 3, "google.cloud.notebooks.v1.ContainerImage"
      optional :data_disk, :message, 4, "google.cloud.notebooks.v1.LocalDisk"
      optional :encryption_config, :message, 5, "google.cloud.notebooks.v1.EncryptionConfig"
      optional :shielded_instance_config, :message, 6, "google.cloud.notebooks.v1.RuntimeShieldedInstanceConfig"
      optional :accelerator_config, :message, 7, "google.cloud.notebooks.v1.RuntimeAcceleratorConfig"
      optional :network, :string, 8
      optional :subnet, :string, 9
      optional :internal_ip_only, :bool, 10
      repeated :tags, :string, 13
      map :guest_attributes, :string, :string, 14
      map :metadata, :string, :string, 15
      map :labels, :string, :string, 16
      optional :nic_type, :enum, 17, "google.cloud.notebooks.v1.VirtualMachineConfig.NicType"
      optional :reserved_ip_range, :string, 18
      optional :boot_image, :message, 19, "google.cloud.notebooks.v1.VirtualMachineConfig.BootImage"
    end
    add_message "google.cloud.notebooks.v1.VirtualMachineConfig.BootImage" do
    end
    add_enum "google.cloud.notebooks.v1.VirtualMachineConfig.NicType" do
      value :UNSPECIFIED_NIC_TYPE, 0
      value :VIRTIO_NET, 1
      value :GVNIC, 2
    end
  end
end

module Google
  module Cloud
    module Notebooks
      module V1
        Runtime = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Runtime").msgclass
        Runtime::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Runtime.State").enummodule
        Runtime::HealthState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Runtime.HealthState").enummodule
        RuntimeAcceleratorConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.RuntimeAcceleratorConfig").msgclass
        RuntimeAcceleratorConfig::AcceleratorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.RuntimeAcceleratorConfig.AcceleratorType").enummodule
        EncryptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.EncryptionConfig").msgclass
        LocalDisk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.LocalDisk").msgclass
        LocalDisk::RuntimeGuestOsFeature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.LocalDisk.RuntimeGuestOsFeature").msgclass
        LocalDiskInitializeParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.LocalDiskInitializeParams").msgclass
        LocalDiskInitializeParams::DiskType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.LocalDiskInitializeParams.DiskType").enummodule
        RuntimeAccessConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.RuntimeAccessConfig").msgclass
        RuntimeAccessConfig::RuntimeAccessType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.RuntimeAccessConfig.RuntimeAccessType").enummodule
        RuntimeSoftwareConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.RuntimeSoftwareConfig").msgclass
        RuntimeMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.RuntimeMetrics").msgclass
        RuntimeShieldedInstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.RuntimeShieldedInstanceConfig").msgclass
        VirtualMachine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.VirtualMachine").msgclass
        VirtualMachineConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.VirtualMachineConfig").msgclass
        VirtualMachineConfig::BootImage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.VirtualMachineConfig.BootImage").msgclass
        VirtualMachineConfig::NicType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.VirtualMachineConfig.NicType").enummodule
      end
    end
  end
end
