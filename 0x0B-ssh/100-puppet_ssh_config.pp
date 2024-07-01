# File: 100-puppet_ssh_config.pp
# using puppet as a configuration manager (CM) to config our ssh user connection
#
# Create a file resource for the SSH client configuration file
file { '/etc/ssh/ssh_config':
  # Ensure that the file is present and its type is 'file'
  ensure  => file,
  # Set the content of the file to the desired SSH client configuration
  content => "
Host *
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
  "
 }


