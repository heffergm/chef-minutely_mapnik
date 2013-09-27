name             'minutely_mapnik'
maintainer       'Mapzen'
maintainer_email 'grant@mapzen.com'
license          'All rights reserved'
description      'Installs/Configures minutely_mapnik'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ postgiswrap osmosis osm2pgsql }.each do |dep|
  depends dep
end

%w{ ubuntu }.each do |os|
    supports os
end

