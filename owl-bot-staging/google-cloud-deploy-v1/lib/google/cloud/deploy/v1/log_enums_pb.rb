# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/deploy/v1/log_enums.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/deploy/v1/log_enums.proto", :syntax => :proto3) do
    add_enum "google.cloud.deploy.v1.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :TYPE_PUBSUB_NOTIFICATION_FAILURE, 1
      value :TYPE_RENDER_STATUES_CHANGE, 2
    end
  end
end

module Google
  module Cloud
    module Deploy
      module V1
        Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Type").enummodule
      end
    end
  end
end
