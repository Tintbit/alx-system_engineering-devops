# this manifest file used to get flask via pip3
#
package { 'python3.8':
  ensure   => 'python3.8.10',
  provider => 'pip3',
  before   => Package['flask']
  }
package { 'flask':
  enusre   => '2.1.0',
  provider => 'pip3',
  }


