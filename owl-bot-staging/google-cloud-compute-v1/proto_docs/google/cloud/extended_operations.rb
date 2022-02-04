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
    # An enum to be used to mark the essential (for polling) fields in an
    # API-specific Operation object. A custom Operation object may contain many
    # different fields, but only few of them are essential to conduct a successful
    # polling process.
    module OperationResponseMapping
      # Do not use.
      UNDEFINED = 0

      # A field in an API-specific (custom) Operation object which carries the same
      # meaning as google.longrunning.Operation.name.
      NAME = 1

      # A field in an API-specific (custom) Operation object which carries the same
      # meaning as google.longrunning.Operation.done. If the annotated field is of
      # an enum type, `annotated_field_name == EnumType.DONE` semantics should be
      # equivalent to `Operation.done == true`. If the annotated field is of type
      # boolean, then it should follow the same semantics as Operation.done.
      # Otherwise, a non-empty value should be treated as `Operation.done == true`.
      STATUS = 2

      # A field in an API-specific (custom) Operation object which carries the same
      # meaning as google.longrunning.Operation.error.code.
      ERROR_CODE = 3

      # A field in an API-specific (custom) Operation object which carries the same
      # meaning as google.longrunning.Operation.error.message.
      ERROR_MESSAGE = 4
    end
  end
end
