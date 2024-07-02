file { '/tmp':
  enusre     => file,
  path       => '/tmp/school',
  permission => '0744',
  owner      => 'www-data',
  group      => 'www-data',
  content    => 'I love Puppet',
  }
