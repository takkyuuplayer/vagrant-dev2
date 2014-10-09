#
# Cookbook Name:: development
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w(
curl-devel
freetype-devel
libevent libevent-devel
libjpeg-devel
libmcrypt-devel
libpng-devel
libtidy libtidy-devel
ncurses ncurses-devel
openssl openssl-devel
re2c
unzip
xz xz-devel
zip
).each do |pkg|
  package pkg do
    action :upgrade
  end
end

%w(/workspace).each do |dir|
  directory dir do
    action :create
    user "vagrant"
    group "vagrant"
    mode 0775
  end
end
