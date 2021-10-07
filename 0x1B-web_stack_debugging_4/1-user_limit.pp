# fix limit of file descriptors
exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -i s/5/500/g /etc/security/limits.conf',
  path    => ['/usr/bin', '/usr/sbin', '/bin/'],
}
->
exec { 'change-os-configuration-for-holberton-user2':
  command => 'sed -i s/4/400/g /etc/security/limits.conf',
  path    => ['/usr/bin', '/usr/sbin', '/bin/'],
}
->
exec { 'restart-nginx':
  command => 'sudo service nginx restart',
  path    => ['/usr/bin', '/usr/sbin',],
}
