# Puppet config to kill a process running in the background
#
## ps aux: Lists all current processes.
## grep -q killmenow: Searches for the string killmenow quietly (without output). Returns 0 if found, indicating success.
## then /usr/bin/pkill killmenow; fi: Executes /usr/bin/pkill killmenow to kill the process if it exists. 
#The fi ends the conditional statement.

#exec { 'check_and_kill_killmenow':
#  command     => 'if ps aux | grep -q killmenow; then /usr/bin/pkill killmenow; fi',
#  refreshonly => true,
#}


# uses the exec resource to run the pkill command, targeting processes named killmenow. 
# The refreshonly => true parameter ensures that the command is idempotent, # meaning it won't cause issues if applied multiple times.
# not idempotent (meaning it can be run multiple times without changing the outcome beyond the initial application).
# 
#exec { 'killmenow':
#  command     => '/usr/bin/pkill killmenow',
#  refreshonly => true,
#}

exec { 'Kill process named killmenow':
  command => '/usr/bin/pkill killmenow',
  onlyif  => '/bin/pgrep killmenow > /dev/null',
  }

