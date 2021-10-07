# fix limit of file descriptors
exec { 'fix--for-nginx':
  command => 'sed -i s/15/500/g /etc/default/nginx',
  path    => ['/usr/bin', '/usr/sbin', '/bin/'],
}
->
exec { 'restart-nginx':
  command => 'sudo service nginx restart',
  path    => ['/usr/bin', '/usr/sbin',],
}
