# Connect to a server without typing a password and use the private key ~/.ssh/holberton
file_line { 'Turn off passwd auth':
  ensure            => 'present',
  path              => '/etc/ssh/ssh_config',
  line              => 'PasswordAuthentication no',
  match             => 'PasswordAuthentication yes',
  replace           => true,
}

file_line { 'Declare identity file':
  ensure            => 'present',
  path              => '/etc/ssh/ssh_config',
  line              => 'IdentityFile ~/.ssh/holberton',
  match             => 'IdentityFile ~/.ssh/if_rsa',
  replace           => true,
}
