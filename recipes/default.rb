#
# Cookbook:: teabot
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

include_recipe 'teabot::docker'
include_recipe 'teabot::service'
include_recipe 'teabot::nginx'
