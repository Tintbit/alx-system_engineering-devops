# this manifest file used to get flask via pip3
package { 'flask':
  enusre   => 2.1.0,
  provider => pip3,
  }
