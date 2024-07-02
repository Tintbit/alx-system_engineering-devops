# puppet conifg to kill a process running in the Background
exec { 'killmenow':
  command => /usr/bin/pkill killmenow,
  }
