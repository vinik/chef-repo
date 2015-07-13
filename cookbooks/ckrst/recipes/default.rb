#
# Cookbook Name:: ckrst
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

docker_service 'default' do
  action [:create, :start]
end

docker_image 'ubuntu' do
  action :pull
end