#
# Cookbook Name:: minutely_mapnik
# Recipe:: default
#
# Copyright 2013, Mapzen
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'minutely_mapnik::structure'

cookbook_file "#{node[:minutely_mapnik][:basedir]}/bin/update.sh" do
  action :create
  source 'update.sh'
  mode 0755
end
