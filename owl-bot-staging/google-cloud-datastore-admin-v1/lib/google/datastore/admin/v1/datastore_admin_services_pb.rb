# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/datastore/admin/v1/datastore_admin.proto for package 'Google.Cloud.Datastore.Admin.V1'
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
require 'google/datastore/admin/v1/datastore_admin_pb'

module Google
  module Cloud
    module Datastore
      module Admin
        module V1
          module DatastoreAdmin
            # Google Cloud Datastore Admin API
            #
            #
            # The Datastore Admin API provides several admin services for Cloud Datastore.
            #
            # -----------------------------------------------------------------------------
            # ## Concepts
            #
            # Project, namespace, kind, and entity as defined in the Google Cloud Datastore
            # API.
            #
            # Operation: An Operation represents work being performed in the background.
            #
            # EntityFilter: Allows specifying a subset of entities in a project. This is
            # specified as a combination of kinds and namespaces (either or both of which
            # may be all).
            #
            # -----------------------------------------------------------------------------
            # ## Services
            #
            # # Export/Import
            #
            # The Export/Import service provides the ability to copy all or a subset of
            # entities to/from Google Cloud Storage.
            #
            # Exported data may be imported into Cloud Datastore for any Google Cloud
            # Platform project. It is not restricted to the export source project. It is
            # possible to export from one project and then import into another.
            #
            # Exported data can also be loaded into Google BigQuery for analysis.
            #
            # Exports and imports are performed asynchronously. An Operation resource is
            # created for each export/import. The state (including any errors encountered)
            # of the export/import may be queried via the Operation resource.
            #
            # # Index
            #
            # The index service manages Cloud Datastore composite indexes.
            #
            # Index creation and deletion are performed asynchronously.
            # An Operation resource is created for each such asynchronous operation.
            # The state of the operation (including any errors encountered)
            # may be queried via the Operation resource.
            #
            # # Operation
            #
            # The Operations collection provides a record of actions performed for the
            # specified project (including any operations in progress). Operations are not
            # created directly but through calls on other collections or resources.
            #
            # An operation that is not yet done may be cancelled. The request to cancel is
            # asynchronous and the operation may continue to run for some time after the
            # request to cancel is made.
            #
            # An operation that is done may be deleted so that it is no longer listed as
            # part of the Operation collection.
            #
            # ListOperations returns all pending operations, but not completed operations.
            #
            # Operations are created by service DatastoreAdmin,
            # but are accessed via service google.longrunning.Operations.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.datastore.admin.v1.DatastoreAdmin'

              # Exports a copy of all or a subset of entities from Google Cloud Datastore
              # to another storage system, such as Google Cloud Storage. Recent updates to
              # entities may not be reflected in the export. The export occurs in the
              # background and its progress can be monitored and managed via the
              # Operation resource that is created. The output of an export may only be
              # used once the associated operation is done. If an export operation is
              # cancelled before completion it may leave partial data behind in Google
              # Cloud Storage.
              rpc :ExportEntities, ::Google::Cloud::Datastore::Admin::V1::ExportEntitiesRequest, ::Google::Longrunning::Operation
              # Imports entities into Google Cloud Datastore. Existing entities with the
              # same key are overwritten. The import occurs in the background and its
              # progress can be monitored and managed via the Operation resource that is
              # created. If an ImportEntities operation is cancelled, it is possible
              # that a subset of the data has already been imported to Cloud Datastore.
              rpc :ImportEntities, ::Google::Cloud::Datastore::Admin::V1::ImportEntitiesRequest, ::Google::Longrunning::Operation
              # Creates the specified index.
              # A newly created index's initial state is `CREATING`. On completion of the
              # returned [google.longrunning.Operation][google.longrunning.Operation], the state will be `READY`.
              # If the index already exists, the call will return an `ALREADY_EXISTS`
              # status.
              #
              # During index creation, the process could result in an error, in which
              # case the index will move to the `ERROR` state. The process can be recovered
              # by fixing the data that caused the error, removing the index with
              # [delete][google.datastore.admin.v1.DatastoreAdmin.DeleteIndex], then
              # re-creating the index with [create]
              # [google.datastore.admin.v1.DatastoreAdmin.CreateIndex].
              #
              # Indexes with a single property cannot be created.
              rpc :CreateIndex, ::Google::Cloud::Datastore::Admin::V1::CreateIndexRequest, ::Google::Longrunning::Operation
              # Deletes an existing index.
              # An index can only be deleted if it is in a `READY` or `ERROR` state. On
              # successful execution of the request, the index will be in a `DELETING`
              # [state][google.datastore.admin.v1.Index.State]. And on completion of the
              # returned [google.longrunning.Operation][google.longrunning.Operation], the index will be removed.
              #
              # During index deletion, the process could result in an error, in which
              # case the index will move to the `ERROR` state. The process can be recovered
              # by fixing the data that caused the error, followed by calling
              # [delete][google.datastore.admin.v1.DatastoreAdmin.DeleteIndex] again.
              rpc :DeleteIndex, ::Google::Cloud::Datastore::Admin::V1::DeleteIndexRequest, ::Google::Longrunning::Operation
              # Gets an index.
              rpc :GetIndex, ::Google::Cloud::Datastore::Admin::V1::GetIndexRequest, ::Google::Cloud::Datastore::Admin::V1::Index
              # Lists the indexes that match the specified filters.  Datastore uses an
              # eventually consistent query to fetch the list of indexes and may
              # occasionally return stale results.
              rpc :ListIndexes, ::Google::Cloud::Datastore::Admin::V1::ListIndexesRequest, ::Google::Cloud::Datastore::Admin::V1::ListIndexesResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
