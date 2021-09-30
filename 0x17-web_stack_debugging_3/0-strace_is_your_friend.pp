# fix the phpp typo
exec { 'fix-wordpress':
  command => 'sudo sed -i s/class-wp-locale.phpp/class-wp-locale.php/g /var/www/html/wp-settings.php',
  path    => ['/usr/bin', '/usr/sbin',],
}
