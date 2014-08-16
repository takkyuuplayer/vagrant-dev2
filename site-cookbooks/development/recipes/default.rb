#
# Cookbook Name:: development
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "Install Development Tools" do
  command 'yum -y groupinstall "Development Tools"'
  action :run
end
