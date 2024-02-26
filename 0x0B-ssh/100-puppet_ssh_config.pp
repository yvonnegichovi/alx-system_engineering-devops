# Puppet manifest to configure SSH client

file_line { 'Turn off passwd auth':
    path  => '/etc/ssh/ssh_config',
    line  => 'PasswordAuthentication no',
    match => '^#?\s*PasswordAuthentication',
}

file_line { 'Remove existing IdentityFile lines':
    path   => '/etc/ssh/ssh_config',
    line   => '',
    match  => '^#?\s*IdentityFile',
    ensure => absent,
}

file_line { 'Declare identity file':
    path   => '/etc/ssh/ssh_config',
    line   => 'IdentityFile ~/.ssh/school',
    match  => '^#?\s*IdentityFile',
    ensure => present,
}
