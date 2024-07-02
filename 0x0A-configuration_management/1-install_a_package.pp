# this manifest file used to get flask via pip3
package { 'flask':
  enusre   => present,
  provider => pip3,
  }
