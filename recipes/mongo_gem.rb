#
# Cookbook Name:: hipsnip-mongodb
# Recipe:: mongo_gem
#
# Copyright 2013, HipSnip Ltd.
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

include_recipe 'build-essential::default'

gem_package "mongo" do
  action :install
  version node['mongodb']['gem_version']['mongo']
end

gem_package "bson_ext" do
  action :install
  version node['mongodb']['gem_version']['bson_ext']
end