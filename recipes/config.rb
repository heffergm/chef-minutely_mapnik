#
# Cookbook Name:: minutely_mapnik
# Recipe:: config
#
# Copyright 2013, Mapzen
#
# All rights reserved - Do Not Redistribute
#

template "#{node[:minutely_mapnik][:basedir]}/bin/update.sh" do
  owner 'root'
  group 'root'
  action :create
  source 'update.sh.erb'
  mode 0755
end

cookbook_file "#{node[:minutely_mapnik][:basedir]}/bin/configuration.txt" do
  owner 'postgres'
  group 'postgres'
  action :create
  source 'configuration.txt'
  mode 0644
end

