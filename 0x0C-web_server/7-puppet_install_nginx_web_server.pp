# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Define Nginx service
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Configure Nginx
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;

    server_name _;

    location / {
        try_files ${uri} ${uri}/ =404;
    }

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }

    error_page 404 /error_404.html;
    location = /error_404.html {
        root /var/www/html;
        internal;
    }
}
  ",
  notify  => Service['nginx'],
}

# Create Hello World index page
file { '/var/www/html/index.nginx-debian.html':
  ensure  => present,
  content => "Hello World!\n",
  require => Package['nginx'],
}

# Create custom 404 error page
file { '/var/www/html/error_404.html':
  ensure  => present,
  content => "Ceci n'est pas une page\n",
  require => Package['nginx'],
}
