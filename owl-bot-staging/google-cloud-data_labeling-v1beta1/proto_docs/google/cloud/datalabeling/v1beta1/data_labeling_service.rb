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
    module DataLabeling
      module V1beta1
        # Request message for CreateDataset.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Dataset resource parent, format:
        #     projects/\\{project_id}
        # @!attribute [rw] dataset
        #   @return [::Google::Cloud::DataLabeling::V1beta1::Dataset]
        #     Required. The dataset to be created.
        class CreateDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetDataSet.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Dataset resource name, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        class GetDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ListDataset.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Dataset resource parent, format:
        #     projects/\\{project_id}
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter on dataset is not supported at this moment.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer results than
        #     requested. Default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results for the server to return.
        #     Typically obtained by
        #     {::Google::Cloud::DataLabeling::V1beta1::ListDatasetsResponse#next_page_token ListDatasetsResponse.next_page_token} of the previous
        #     [DataLabelingService.ListDatasets] call.
        #     Returns the first page if empty.
        class ListDatasetsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results of listing datasets within a project.
        # @!attribute [rw] datasets
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::Dataset>]
        #     The list of datasets to return.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        class ListDatasetsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for DeleteDataset.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Dataset resource name, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        class DeleteDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ImportData API.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Dataset resource name, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        # @!attribute [rw] input_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::InputConfig]
        #     Required. Specify the input source of the data.
        # @!attribute [rw] user_email_address
        #   @return [::String]
        #     Email of the user who started the import task and should be notified by
        #     email. If empty no notification will be sent.
        class ImportDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ExportData API.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Dataset resource name, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        # @!attribute [rw] annotated_dataset
        #   @return [::String]
        #     Required. Annotated dataset resource name. DataItem in
        #     Dataset and their annotations in specified annotated dataset will be
        #     exported. It's in format of
        #     projects/\\{project_id}/datasets/\\{dataset_id}/annotatedDatasets/
        #     \\{annotated_dataset_id}
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter is not supported at this moment.
        # @!attribute [rw] output_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::OutputConfig]
        #     Required. Specify the output destination.
        # @!attribute [rw] user_email_address
        #   @return [::String]
        #     Email of the user who started the export task and should be notified by
        #     email. If empty no notification will be sent.
        class ExportDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetDataItem.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the data item to get, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}/dataItems/\\{data_item_id}
        class GetDataItemRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ListDataItems.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the dataset to list data items, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter is not supported at this moment.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer results than
        #     requested. Default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results for the server to return.
        #     Typically obtained by
        #     {::Google::Cloud::DataLabeling::V1beta1::ListDataItemsResponse#next_page_token ListDataItemsResponse.next_page_token} of the previous
        #     [DataLabelingService.ListDataItems] call.
        #     Return first page if empty.
        class ListDataItemsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results of listing data items in a dataset.
        # @!attribute [rw] data_items
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::DataItem>]
        #     The list of data items to return.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        class ListDataItemsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetAnnotatedDataset.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the annotated dataset to get, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}/annotatedDatasets/
        #     \\{annotated_dataset_id}
        class GetAnnotatedDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ListAnnotatedDatasets.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the dataset to list annotated datasets, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter is not supported at this moment.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer results than
        #     requested. Default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results for the server to return.
        #     Typically obtained by
        #     {::Google::Cloud::DataLabeling::V1beta1::ListAnnotatedDatasetsResponse#next_page_token ListAnnotatedDatasetsResponse.next_page_token} of the previous
        #     [DataLabelingService.ListAnnotatedDatasets] call.
        #     Return first page if empty.
        class ListAnnotatedDatasetsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results of listing annotated datasets for a dataset.
        # @!attribute [rw] annotated_datasets
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::AnnotatedDataset>]
        #     The list of annotated datasets to return.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        class ListAnnotatedDatasetsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for DeleteAnnotatedDataset.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the annotated dataset to delete, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}/annotatedDatasets/
        #     \\{annotated_dataset_id}
        class DeleteAnnotatedDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for starting an image labeling task.
        # @!attribute [rw] image_classification_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ImageClassificationConfig]
        #     Configuration for image classification task.
        #     One of image_classification_config, bounding_poly_config,
        #     polyline_config and segmentation_config are required.
        # @!attribute [rw] bounding_poly_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::BoundingPolyConfig]
        #     Configuration for bounding box and bounding poly task.
        #     One of image_classification_config, bounding_poly_config,
        #     polyline_config and segmentation_config are required.
        # @!attribute [rw] polyline_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::PolylineConfig]
        #     Configuration for polyline task.
        #     One of image_classification_config, bounding_poly_config,
        #     polyline_config and segmentation_config are required.
        # @!attribute [rw] segmentation_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::SegmentationConfig]
        #     Configuration for segmentation task.
        #     One of image_classification_config, bounding_poly_config,
        #     polyline_config and segmentation_config are required.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the dataset to request labeling task, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Required. Basic human annotation config.
        # @!attribute [rw] feature
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelImageRequest::Feature]
        #     Required. The type of image labeling task.
        class LabelImageRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Image labeling task feature.
          module Feature
            FEATURE_UNSPECIFIED = 0

            # Label whole image with one or more of labels.
            CLASSIFICATION = 1

            # Label image with bounding boxes for labels.
            BOUNDING_BOX = 2

            # Label oriented bounding box. The box does not have to be parallel to
            # horizontal line.
            ORIENTED_BOUNDING_BOX = 6

            # Label images with bounding poly. A bounding poly is a plane figure that
            # is bounded by a finite chain of straight line segments closing in a loop.
            BOUNDING_POLY = 3

            # Label images with polyline. Polyline is formed by connected line segments
            # which are not in closed form.
            POLYLINE = 4

            # Label images with segmentation. Segmentation is different from bounding
            # poly since it is more fine-grained, pixel level annotation.
            SEGMENTATION = 5
          end
        end

        # Request message for LabelVideo.
        # @!attribute [rw] video_classification_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::VideoClassificationConfig]
        #     Configuration for video classification task.
        #     One of video_classification_config, object_detection_config,
        #     object_tracking_config and event_config is required.
        # @!attribute [rw] object_detection_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ObjectDetectionConfig]
        #     Configuration for video object detection task.
        #     One of video_classification_config, object_detection_config,
        #     object_tracking_config and event_config is required.
        # @!attribute [rw] object_tracking_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ObjectTrackingConfig]
        #     Configuration for video object tracking task.
        #     One of video_classification_config, object_detection_config,
        #     object_tracking_config and event_config is required.
        # @!attribute [rw] event_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EventConfig]
        #     Configuration for video event task.
        #     One of video_classification_config, object_detection_config,
        #     object_tracking_config and event_config is required.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the dataset to request labeling task, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Required. Basic human annotation config.
        # @!attribute [rw] feature
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelVideoRequest::Feature]
        #     Required. The type of video labeling task.
        class LabelVideoRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Video labeling task feature.
          module Feature
            FEATURE_UNSPECIFIED = 0

            # Label whole video or video segment with one or more labels.
            CLASSIFICATION = 1

            # Label objects with bounding box on image frames extracted from the video.
            OBJECT_DETECTION = 2

            # Label and track objects in video.
            OBJECT_TRACKING = 3

            # Label the range of video for the specified events.
            EVENT = 4
          end
        end

        # Request message for LabelText.
        # @!attribute [rw] text_classification_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::TextClassificationConfig]
        #     Configuration for text classification task.
        #     One of text_classification_config and text_entity_extraction_config
        #     is required.
        # @!attribute [rw] text_entity_extraction_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::TextEntityExtractionConfig]
        #     Configuration for entity extraction task.
        #     One of text_classification_config and text_entity_extraction_config
        #     is required.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the data set to request labeling task, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}
        # @!attribute [rw] basic_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Required. Basic human annotation config.
        # @!attribute [rw] feature
        #   @return [::Google::Cloud::DataLabeling::V1beta1::LabelTextRequest::Feature]
        #     Required. The type of text labeling task.
        class LabelTextRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Text labeling task feature.
          module Feature
            FEATURE_UNSPECIFIED = 0

            # Label text content to one of more labels.
            TEXT_CLASSIFICATION = 1

            # Label entities and their span in text.
            TEXT_ENTITY_EXTRACTION = 2
          end
        end

        # Request message for GetExample
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of example, format:
        #     projects/\\{project_id}/datasets/\\{dataset_id}/annotatedDatasets/
        #     \\{annotated_dataset_id}/examples/\\{example_id}
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering Examples. Filter by
        #     annotation_spec.display_name is supported. Format
        #     "annotation_spec.display_name = \\{display_name}"
        class GetExampleRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ListExamples.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Example resource parent.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering Examples. For annotated datasets that
        #     have annotation spec set, filter by
        #     annotation_spec.display_name is supported. Format
        #     "annotation_spec.display_name = \\{display_name}"
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer results than
        #     requested. Default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results for the server to return.
        #     Typically obtained by
        #     {::Google::Cloud::DataLabeling::V1beta1::ListExamplesResponse#next_page_token ListExamplesResponse.next_page_token} of the previous
        #     [DataLabelingService.ListExamples] call.
        #     Return first page if empty.
        class ListExamplesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results of listing Examples in and annotated dataset.
        # @!attribute [rw] examples
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::Example>]
        #     The list of examples to return.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        class ListExamplesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for CreateAnnotationSpecSet.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. AnnotationSpecSet resource parent, format:
        #     projects/\\{project_id}
        # @!attribute [rw] annotation_spec_set
        #   @return [::Google::Cloud::DataLabeling::V1beta1::AnnotationSpecSet]
        #     Required. Annotation spec set to create. Annotation specs must be included.
        #     Only one annotation spec will be accepted for annotation specs with same
        #     display_name.
        class CreateAnnotationSpecSetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetAnnotationSpecSet.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. AnnotationSpecSet resource name, format:
        #     projects/\\{project_id}/annotationSpecSets/\\{annotation_spec_set_id}
        class GetAnnotationSpecSetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ListAnnotationSpecSets.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent of AnnotationSpecSet resource, format:
        #     projects/\\{project_id}
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter is not supported at this moment.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer results than
        #     requested. Default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results for the server to return.
        #     Typically obtained by
        #     {::Google::Cloud::DataLabeling::V1beta1::ListAnnotationSpecSetsResponse#next_page_token ListAnnotationSpecSetsResponse.next_page_token} of the previous
        #     [DataLabelingService.ListAnnotationSpecSets] call.
        #     Return first page if empty.
        class ListAnnotationSpecSetsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results of listing annotation spec set under a project.
        # @!attribute [rw] annotation_spec_sets
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::AnnotationSpecSet>]
        #     The list of annotation spec sets.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        class ListAnnotationSpecSetsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for DeleteAnnotationSpecSet.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. AnnotationSpec resource name, format:
        #     `projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}`.
        class DeleteAnnotationSpecSetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for CreateInstruction.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Instruction resource parent, format:
        #     projects/\\{project_id}
        # @!attribute [rw] instruction
        #   @return [::Google::Cloud::DataLabeling::V1beta1::Instruction]
        #     Required. Instruction of how to perform the labeling task.
        class CreateInstructionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetInstruction.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Instruction resource name, format:
        #     projects/\\{project_id}/instructions/\\{instruction_id}
        class GetInstructionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for DeleteInstruction.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Instruction resource name, format:
        #     projects/\\{project_id}/instructions/\\{instruction_id}
        class DeleteInstructionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ListInstructions.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Instruction resource parent, format:
        #     projects/\\{project_id}
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter is not supported at this moment.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer results than
        #     requested. Default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results for the server to return.
        #     Typically obtained by
        #     {::Google::Cloud::DataLabeling::V1beta1::ListInstructionsResponse#next_page_token ListInstructionsResponse.next_page_token} of the previous
        #     [DataLabelingService.ListInstructions] call.
        #     Return first page if empty.
        class ListInstructionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results of listing instructions under a project.
        # @!attribute [rw] instructions
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::Instruction>]
        #     The list of Instructions to return.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        class ListInstructionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetEvaluation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the evaluation. Format:
        #
        #     "projects/<var>\\{project_id}</var>/datasets/<var>\\{dataset_id}</var>/evaluations/<var>\\{evaluation_id}</var>'
        class GetEvaluationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for SearchEvaluation.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Evaluation search parent (project ID). Format:
        #     "projects/<var>\\{project_id}</var>"
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. To search evaluations, you can filter by the following:
        #
        #     * evaluation<span>_</span>job.evaluation_job_id (the last part of
        #       {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#name EvaluationJob.name})
        #     * evaluation<span>_</span>job.model_id (the <var>\\{model_name}</var> portion
        #       of {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#model_version EvaluationJob.modelVersion})
        #     * evaluation<span>_</span>job.evaluation_job_run_time_start (Minimum
        #       threshold for the
        #       {::Google::Cloud::DataLabeling::V1beta1::Evaluation#evaluation_job_run_time evaluationJobRunTime} that created
        #       the evaluation)
        #     * evaluation<span>_</span>job.evaluation_job_run_time_end (Maximum
        #       threshold for the
        #       {::Google::Cloud::DataLabeling::V1beta1::Evaluation#evaluation_job_run_time evaluationJobRunTime} that created
        #       the evaluation)
        #     * evaluation<span>_</span>job.job_state ({::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#state EvaluationJob.state})
        #     * annotation<span>_</span>spec.display_name (the Evaluation contains a
        #       metric for the annotation spec with this
        #       {::Google::Cloud::DataLabeling::V1beta1::AnnotationSpec#display_name displayName})
        #
        #     To filter by multiple critiera, use the `AND` operator or the `OR`
        #     operator. The following examples shows a string that filters by several
        #     critiera:
        #
        #     "evaluation<span>_</span>job.evaluation_job_id =
        #     <var>\\{evaluation_job_id}</var> AND evaluation<span>_</span>job.model_id =
        #     <var>\\{model_name}</var> AND
        #     evaluation<span>_</span>job.evaluation_job_run_time_start =
        #     <var>\\{timestamp_1}</var> AND
        #     evaluation<span>_</span>job.evaluation_job_run_time_end =
        #     <var>\\{timestamp_2}</var> AND annotation<span>_</span>spec.display_name =
        #     <var>\\{display_name}</var>"
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer results than
        #     requested. Default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results for the server to return.
        #     Typically obtained by the
        #     {::Google::Cloud::DataLabeling::V1beta1::SearchEvaluationsResponse#next_page_token nextPageToken} of the response
        #     to a previous search request.
        #
        #     If you don't specify this field, the API call requests the first page of
        #     the search.
        class SearchEvaluationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results of searching evaluations.
        # @!attribute [rw] evaluations
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::Evaluation>]
        #     The list of evaluations matching the search.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        class SearchEvaluationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message of SearchExampleComparisons.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the {::Google::Cloud::DataLabeling::V1beta1::Evaluation Evaluation} resource to search for example
        #     comparisons from. Format:
        #
        #     "projects/<var>\\{project_id}</var>/datasets/<var>\\{dataset_id}</var>/evaluations/<var>\\{evaluation_id}</var>"
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer results than
        #     requested. Default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results for the server to return.
        #     Typically obtained by the
        #     [nextPageToken][SearchExampleComparisons.next_page_token] of the response
        #     to a previous search rquest.
        #
        #     If you don't specify this field, the API call requests the first page of
        #     the search.
        class SearchExampleComparisonsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results of searching example comparisons.
        # @!attribute [rw] example_comparisons
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::SearchExampleComparisonsResponse::ExampleComparison>]
        #     A list of example comparisons matching the search criteria.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        class SearchExampleComparisonsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Example comparisons comparing ground truth output and predictions for a
          # specific input.
          # @!attribute [rw] ground_truth_example
          #   @return [::Google::Cloud::DataLabeling::V1beta1::Example]
          #     The ground truth output for the input.
          # @!attribute [rw] model_created_examples
          #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::Example>]
          #     Predictions by the model for the input.
          class ExampleComparison
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request message for CreateEvaluationJob.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Evaluation job resource parent. Format:
        #     "projects/<var>\\{project_id}</var>"
        # @!attribute [rw] job
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EvaluationJob]
        #     Required. The evaluation job to create.
        class CreateEvaluationJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for UpdateEvaluationJob.
        # @!attribute [rw] evaluation_job
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EvaluationJob]
        #     Required. Evaluation job that is going to be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Mask for which fields to update. You can only provide the
        #     following fields:
        #
        #     * `evaluationJobConfig.humanAnnotationConfig.instruction`
        #     * `evaluationJobConfig.exampleCount`
        #     * `evaluationJobConfig.exampleSamplePercentage`
        #
        #     You can provide more than one of these fields by separating them with
        #     commas.
        class UpdateEvaluationJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetEvaluationJob.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the evaluation job. Format:
        #
        #     "projects/<var>\\{project_id}</var>/evaluationJobs/<var>\\{evaluation_job_id}</var>"
        class GetEvaluationJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for PauseEvaluationJob.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the evaluation job that is going to be paused. Format:
        #
        #     "projects/<var>\\{project_id}</var>/evaluationJobs/<var>\\{evaluation_job_id}</var>"
        class PauseEvaluationJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message ResumeEvaluationJob.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the evaluation job that is going to be resumed. Format:
        #
        #     "projects/<var>\\{project_id}</var>/evaluationJobs/<var>\\{evaluation_job_id}</var>"
        class ResumeEvaluationJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message DeleteEvaluationJob.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the evaluation job that is going to be deleted. Format:
        #
        #     "projects/<var>\\{project_id}</var>/evaluationJobs/<var>\\{evaluation_job_id}</var>"
        class DeleteEvaluationJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ListEvaluationJobs.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Evaluation job resource parent. Format:
        #     "projects/<var>\\{project_id}</var>"
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. You can filter the jobs to list by model_id (also known as
        #     model_name, as described in
        #     {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#model_version EvaluationJob.modelVersion}) or by
        #     evaluation job state (as described in {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#state EvaluationJob.state}). To filter
        #     by both criteria, use the `AND` operator or the `OR` operator. For example,
        #     you can use the following string for your filter:
        #     "evaluation<span>_</span>job.model_id = <var>\\{model_name}</var> AND
        #     evaluation<span>_</span>job.state = <var>\\{evaluation_job_state}</var>"
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer results than
        #     requested. Default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results for the server to return.
        #     Typically obtained by the
        #     {::Google::Cloud::DataLabeling::V1beta1::ListEvaluationJobsResponse#next_page_token nextPageToken} in the response
        #     to the previous request. The request returns the first page if this is
        #     empty.
        class ListEvaluationJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Results for listing evaluation jobs.
        # @!attribute [rw] evaluation_jobs
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::EvaluationJob>]
        #     The list of evaluation jobs to return.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        class ListEvaluationJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
