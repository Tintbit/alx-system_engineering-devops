# this manifest file used to get flask via pip3
##package { 'flask':
##  enusre   => '2.1.0',
##  provider => 'pip3',
##  }

# Install python3-pip package which provides pip3
package { 'python3-pip':
  ensure => present,
  }

# Use the pip3 module to install Flask version 2.1.0
class { 'pip3':
  ensure_packages => true,
  }

pip3::package { 'Flask==2.1.0':
  ensure   => present,
  }
