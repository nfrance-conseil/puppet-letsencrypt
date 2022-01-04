# == Class: letsencrypt::params
#
# Params class for letsencrypt module
#
class letsencrypt::params {
  case $facts['os']['family'] {
        'FreeBSD': {
          $config_dir   = '/usr/local/etc/letsencrypt'
          $root_group   = 'wheel'
          $package_name = 'py38-certbot'
      }
      default: {
          $config_dir   = '/etc/letsencrypt'
          $root_group   = 'root'
          $package_name = 'certbot'
      }
  }
}

