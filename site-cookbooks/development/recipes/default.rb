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
  # command 'yum -y groupinstall "Additional Development"'
  action :run
end

%w(
curl-devel
freetype-devel
libjpeg-devel
libmcrypt-devel
libpng-devel
libtidy libtidy-devel
re2c
).each do |pkg|
  package pkg do
    action :upgrade
  end
end
