# Connect to a server without typing a password and use the private key ~/.ssh/holberton
file_line { 'Turn off passwd auth':
  ensure            => created,
  path              => '/etc/ssh/ssh_config',
  line              => 'PasswordAuthentication no',
  replace           => true,
}

file_line { 'Declare identity file':
  ensure            => created,
  path              => '/etc/ssh/ssh_config',
  line              => 'IdentityFile ~/.ssh/holberton',
  replace           => true,
}
