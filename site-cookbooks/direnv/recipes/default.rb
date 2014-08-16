#
# Cookbook Name:: direnv
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "#{Chef::Config[:file_cache_path]}/direnv" do
  repository "http://github.com/zimbatm/direnv"
  revision "master"
  action :sync
  not_if "which direnv &> /dev/null"
end

execute "Install direnv" do
  user "root"
  cwd "#{Chef::Config[:file_cache_path]}/direnv"
  command "make install"
  not_if "which direnv &> /dev/null"
end
