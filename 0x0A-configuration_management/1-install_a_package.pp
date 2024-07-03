# this manifest file used to get flask via pip3
##package { 'flask':
##  enusre   => '2.1.0',
##  provider => 'pip3',
##  }

#class { 'python':
#  ensure => present,
#  }
#
#package { 'python3-pip':
#  ensure  => present,
#  require => Class['python'],
#  }
#
## Ensure pip3 is available
#exec { 'Ensure pip3 is available':
#  command => '/usr/bin/python3 -m ensurepip',
#  unless  => '/usr/local/bin/pip3 --version',
#  }
#
# Install Flask
package { 'flask==2.1.0':
  ensure   => present,
  provider => pip,
  }

