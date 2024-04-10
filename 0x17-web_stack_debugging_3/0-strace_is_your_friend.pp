# Using strace, find out why Apache is returning a 500 error.
file { '/tmp/apache_strace.txt':
  ensure => present,
}
exec { 'strace_apache':
  command     => '/usr/bin/strace -o /tmp/apache_strace.txt -f -p $(pidof apache2)',
  refreshonly => true,
}

exec { 'restart_apache_on_strace':
  command     => '/bin/systemctl restart apache2',
  subscribe   => File['/tmp/apache_strace.txt'],
  refreshonly => true,
}
