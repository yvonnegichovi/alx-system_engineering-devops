# Install nginx package
package { 'nginx':
  ensure => installed,
}

# Define custom HTTP header value (server hostname)
$hostname_value = $::hostname

# Replace Nginx default configuration
file { '/etc/nginx/sites-enabled/default':
   ensure => file,
   source => 'puppet:///modules/nginx/nginx.conf',
   require => Package['nginx'],
   notify => Service['nginx'],
}

# Configure Nginx to add the custom header
file { '/etc/nginx/sites-available/default':
   ensure => file,
   content => 'server {
		listen 80 default_server;
		listen [::]:80 default_server;
		server_name _;
		location / {
		   add_header X-Servedn-By $hostname;
		   root /var/www/html;
		   index index.html;
		}
	      }',
   require => Package['nginx'],
   notify => Service['nginx'],
}

file { '/etc/nginx/nginx.conf':
   ensure  => file,
   source  => 'puppet:///modules/nginx/nginx.conf',
}

# Define nginx service
service { 'nginx':
   ensure => running,
   enable => true,
   require => Package['nginx'],
   subscribe => [File['/etc/nginx/sites-available/default', '/etc/nginx/nginx.conf']]
}
