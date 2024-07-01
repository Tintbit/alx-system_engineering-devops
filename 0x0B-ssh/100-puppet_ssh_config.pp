# File: 100-puppet_ssh_config.pp
# using puppet as a configuration manager (CM) to config our ssh user connection
#
# Create a file resource for the SSH client configuration file
file { '~/.ssh/config':
  # Ensure that the file is present and its type is 'file'
  ensure  => file,
  # Set the content of the file to the desired SSH client configuration
  content => "
Host *
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
  ",
  # Set the owner of the file to the specified username
  owner   => 'ubuntu',
  # Set the group of the file to the specified username
  group   => 'ubuntu',
  # Set the permissions of the file to read-only for the owner (0600)
  mode    => '0600',
}


