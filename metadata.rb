name             'filesystems'
maintainer       'Alex Trull'
maintainer_email 'cookbooks.atrullmdsol@trull.org'
description      'Installs/Configures various filesystems'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.8.0"

%w/redhat centos xenserver ubuntu debian scientific amazon/.each do |os|
  supports os
end

depends 'xfs'
depends 'lvm', '~> 1.0.0'

attribute'node[:filesystems]',
  :description => "Filesystems to be created and/or mounted",
  :type => "hash",
  :required => "recommended"

