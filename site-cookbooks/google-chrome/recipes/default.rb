#
# Cookbook Name:: google-chrome
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

remote_file "#{Chef::Config[:file_cache_path]}/install_chrome.sh" do
  source "http://chrome.richardlloyd.org.uk/install_chrome.sh"
end

execute "Install google-chrome" do
  command "bash #{Chef::Config[:file_cache_path]}/install_chrome.sh --force"
  not_if "which google-chrome &> /dev/null"
end
