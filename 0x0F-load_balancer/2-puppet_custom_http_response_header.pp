# Install nginx package
package { 'nginx':
  ensure => installed,
}

# Define custom HTTP header value (server hostname)
$hostname_value = $::hostname

# Configure Nginx to add the custom header
file { '/etc/nginx/sites-available/default':
   ensure => file,
   content => template('nginx/default.erb'),
   require => Package['nginx'],
   notify => Service['nginx'],
}

# Enable default site
file { '/etc/nginx/sites-enabled/default':
   ensure => link,
   target => '/etc/nginx/sites-available/default',
   require => Package['nginx'],
   notify => Service['nginx'],
}

# Define nginx service
service { 'nginx':
   ensure => running,
   enable => true,
   subscribe => [File['/etc/nginx/sites-available/default'], File['/etc/nginx/nginx.conf']]
}
