#
# Cookbook Name:: development
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w(
bzip2 bzip2-devel bzip2-libs
curl-devel
expat-devel
freetype-devel
fontconfig fontconfig-devel
gettext-devel
libevent libevent-devel
libffi libffi-devel
libjpeg-devel
libmcrypt-devel
libpng-devel
libstdc++ libstdc++-devel libstdc++-docs
libtidy libtidy-devel
libxml2 libxml2-devel
libxslt libxslt-devel
ncurses ncurses-devel
openssl openssl-devel
perl-ExtUtils-MakeMaker
re2c
readline readline-devel
sqlite-devel
unzip
xz xz-devel
xdg-utils
zip
zlib-devel
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
