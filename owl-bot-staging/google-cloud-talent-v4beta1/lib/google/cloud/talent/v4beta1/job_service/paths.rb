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
    module Talent
      module V4beta1
        module JobService
          # Path helper methods for the JobService API.
          module Paths
            ##
            # Create a fully-qualified Company resource string.
            #
            # @overload company_path(project:, tenant:, company:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/tenants/{tenant}/companies/{company}`
            #
            #   @param project [String]
            #   @param tenant [String]
            #   @param company [String]
            #
            # @overload company_path(project:, company:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/companies/{company}`
            #
            #   @param project [String]
            #   @param company [String]
            #
            # @return [::String]
            def company_path **args
              resources = {
                "company:project:tenant" => (proc do |project:, tenant:, company:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "tenant cannot contain /" if tenant.to_s.include? "/"

                  "projects/#{project}/tenants/#{tenant}/companies/#{company}"
                end),
                "company:project" => (proc do |project:, company:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/companies/#{company}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Job resource string.
            #
            # @overload job_path(project:, tenant:, job:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/tenants/{tenant}/jobs/{job}`
            #
            #   @param project [String]
            #   @param tenant [String]
            #   @param job [String]
            #
            # @overload job_path(project:, job:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/jobs/{job}`
            #
            #   @param project [String]
            #   @param job [String]
            #
            # @return [::String]
            def job_path **args
              resources = {
                "job:project:tenant" => (proc do |project:, tenant:, job:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "tenant cannot contain /" if tenant.to_s.include? "/"

                  "projects/#{project}/tenants/#{tenant}/jobs/#{job}"
                end),
                "job:project" => (proc do |project:, job:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/jobs/#{job}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            ##
            # Create a fully-qualified Tenant resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/tenants/{tenant}`
            #
            # @param project [String]
            # @param tenant [String]
            #
            # @return [::String]
            def tenant_path project:, tenant:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/tenants/#{tenant}"
            end

            extend self
          end
        end
      end
    end
  end
end
