# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/training_pipeline.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/io_pb'
require 'google/cloud/aiplatform/v1/model_pb'
require 'google/cloud/aiplatform/v1/pipeline_state_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/training_pipeline.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.TrainingPipeline" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :input_data_config, :message, 3, "google.cloud.aiplatform.v1.InputDataConfig"
      optional :training_task_definition, :string, 4
      optional :training_task_inputs, :message, 5, "google.protobuf.Value"
      optional :training_task_metadata, :message, 6, "google.protobuf.Value"
      optional :model_to_upload, :message, 7, "google.cloud.aiplatform.v1.Model"
      optional :model_id, :string, 22
      optional :parent_model, :string, 21
      optional :state, :enum, 9, "google.cloud.aiplatform.v1.PipelineState"
      optional :error, :message, 10, "google.rpc.Status"
      optional :create_time, :message, 11, "google.protobuf.Timestamp"
      optional :start_time, :message, 12, "google.protobuf.Timestamp"
      optional :end_time, :message, 13, "google.protobuf.Timestamp"
      optional :update_time, :message, 14, "google.protobuf.Timestamp"
      map :labels, :string, :string, 15
      optional :encryption_spec, :message, 18, "google.cloud.aiplatform.v1.EncryptionSpec"
    end
    add_message "google.cloud.aiplatform.v1.InputDataConfig" do
      optional :dataset_id, :string, 1
      optional :annotations_filter, :string, 6
      optional :annotation_schema_uri, :string, 9
      optional :saved_query_id, :string, 7
      oneof :split do
        optional :fraction_split, :message, 2, "google.cloud.aiplatform.v1.FractionSplit"
        optional :filter_split, :message, 3, "google.cloud.aiplatform.v1.FilterSplit"
        optional :predefined_split, :message, 4, "google.cloud.aiplatform.v1.PredefinedSplit"
        optional :timestamp_split, :message, 5, "google.cloud.aiplatform.v1.TimestampSplit"
        optional :stratified_split, :message, 12, "google.cloud.aiplatform.v1.StratifiedSplit"
      end
      oneof :destination do
        optional :gcs_destination, :message, 8, "google.cloud.aiplatform.v1.GcsDestination"
        optional :bigquery_destination, :message, 10, "google.cloud.aiplatform.v1.BigQueryDestination"
      end
    end
    add_message "google.cloud.aiplatform.v1.FractionSplit" do
      optional :training_fraction, :double, 1
      optional :validation_fraction, :double, 2
      optional :test_fraction, :double, 3
    end
    add_message "google.cloud.aiplatform.v1.FilterSplit" do
      optional :training_filter, :string, 1
      optional :validation_filter, :string, 2
      optional :test_filter, :string, 3
    end
    add_message "google.cloud.aiplatform.v1.PredefinedSplit" do
      optional :key, :string, 1
    end
    add_message "google.cloud.aiplatform.v1.TimestampSplit" do
      optional :training_fraction, :double, 1
      optional :validation_fraction, :double, 2
      optional :test_fraction, :double, 3
      optional :key, :string, 4
    end
    add_message "google.cloud.aiplatform.v1.StratifiedSplit" do
      optional :training_fraction, :double, 1
      optional :validation_fraction, :double, 2
      optional :test_fraction, :double, 3
      optional :key, :string, 4
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        TrainingPipeline = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.TrainingPipeline").msgclass
        InputDataConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.InputDataConfig").msgclass
        FractionSplit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FractionSplit").msgclass
        FilterSplit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FilterSplit").msgclass
        PredefinedSplit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredefinedSplit").msgclass
        TimestampSplit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.TimestampSplit").msgclass
        StratifiedSplit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.StratifiedSplit").msgclass
      end
    end
  end
end
