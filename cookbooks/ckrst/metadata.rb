name             'ckrst'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures ckrst'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

depends 'docker'
depends 'hostsfile'
depends 'chef-vault'
depends 'sudo', '~> 2.9.0'
depends 'ssh_authorized_keys', '~> 0.3.0'
