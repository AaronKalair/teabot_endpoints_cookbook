name 'teabot_endpoints'
maintainer 'Aaron Kalair'
maintainer_email 'aaronkalair@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures teabot_endpoints'
long_description 'Installs/Configures teabot_endpoints'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)


depends 'docker', '~> 2.0'
depends 'nginx', '~> 7.0'
