fest to change OS configuration to resolve user limit issue

# Fix for user limit issue
exec { 'change-os-configuration-for-holberton-user':
  command => '/bin/sed -i "/^* soft nofile 8192/d" /etc/security/limits.conf && /bin/sed -i "/^* hard nofile 8192/d" /etc/security/limits.conf && /bin/echo "* soft nofile 8192" >> /etc/security/limits.conf && /bin/echo "* hard nofile 8192" >> /etc/security/limits.conf',
}

# Notify user about successful configuration change
notify { 'User limit issue fixed':
  message => 'User limit issue has been resolved successfully.',
  require => Exec['change-os-configuration-for-holberton-user'],
}
