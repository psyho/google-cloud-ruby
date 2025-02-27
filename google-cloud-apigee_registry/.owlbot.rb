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

# Delete the Google::Cloud::ApigeeRegistry.iam_policy method and test
# until https://github.com/googleapis/gapic-generator-ruby/issues/775 is fixed
OwlBot.modifier path: "lib/google/cloud/apigee_registry.rb",
                name: "delete-iam-policy-factory" do |content|
  OwlBot::RubyContent
    .new(content)
    .select_block("module Google")
    .select_block("module Cloud")
    .select_block("module ApigeeRegistry")
    .select_block("def self.iam_policy")
    .delete
end
OwlBot.modifier path: "test/google/cloud/apigee_registry/client_test.rb",
                name: "delete-iam-policy-factory-test" do |content|
  OwlBot::RubyContent
    .new(content)
    .select_block("class Google::Cloud::ApigeeRegistry::ClientConstructionMinitest")
    .select_block("def test_iam_policy")
    .delete
end

# Delete the Google::Cloud::ApigeeRegistry.locations method and test
# until https://github.com/googleapis/gapic-generator-ruby/issues/775 is fixed
OwlBot.modifier path: "lib/google/cloud/apigee_registry.rb",
                name: "delete-locations-factory" do |content|
  OwlBot::RubyContent
    .new(content)
    .select_block("module Google")
    .select_block("module Cloud")
    .select_block("module ApigeeRegistry")
    .select_block("def self.locations")
    .delete
end
OwlBot.modifier path: "test/google/cloud/apigee_registry/client_test.rb",
                name: "delete-locations-factory-test" do |content|
  OwlBot::RubyContent
    .new(content)
    .select_block("class Google::Cloud::ApigeeRegistry::ClientConstructionMinitest")
    .select_block("def test_locations")
    .delete
end

OwlBot.move_files
