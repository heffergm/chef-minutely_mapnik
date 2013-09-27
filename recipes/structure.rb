#
# Cookbook Name:: minutely_mapnik
# Recipe:: structure
#
# Copyright 2013, Mapzen
#
# All rights reserved - Do Not Redistribute
#

directory '/var/lib/minutely_mapnik' do
  action :create
  owner 'postgres'
  group 'postgres'
  mode 0644
end

%w(bin logs osmosis).each do |d|
  directory d do
    action :create
    owner 'postgres'
    group 'postgres'
    mode 0644
  end
end
