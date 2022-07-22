# == Class: letsencrypt::params
#
# A set of default parameters for Let's encrypt's configuration.
#
class letsencrypt::params {
  case $facts['os']['family'] {
    'FreeBSD': {
      $configure_epel = false
      $config_dir     = '/usr/local/etc/letsencrypt'
      $root_group     = 'wheel'
    }
    'RedHat': {
      $configure_epel = true
      $config_dir     = '/etc/letsencrypt'
      $root_group     = 'root'
    }
    default: {
      $configure_epel = false
      $config_dir     = '/etc/letsencrypt'
      $root_group     = 'root'
    }
  }
}
