#
# Cookbook Name:: minutely_mapnik
# Recipe:: structure
#
# Copyright 2013, Mapzen
#
# All rights reserved - Do Not Redistribute
#

directory "#{node[:minutely_mapnik][:basedir]}" do
  action :create
  owner 'postgres'
  group 'postgres'
  mode 0644
end

%w(bin logs osmosis).each do |d|
  directory "#{node[:minutely_mapnik][:basedir]}/#{d}" do
    action :create
    owner 'postgres'
    group 'postgres'
    mode 0644
  end
end
