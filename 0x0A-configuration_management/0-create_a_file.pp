# this is a puppet manifset file that used to create and ensure the existance of file /tmp at path
# puppet is and config manager (CM) tool. puppet uses `declarative` language to make an abstracted and `portable`  config files that can work/ used for different platforms.
file { '/tmp/school':
  ensure     => file,
  mode       => '0744',
  owner      => 'www-data',
  group      => 'www-data',
  content    => 'I love Puppet',
  }
