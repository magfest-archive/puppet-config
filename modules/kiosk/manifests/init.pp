class kiosk {
  file { '/root/kiosk.iso':
    ensure => file,
    source => 'puppet:///modules/kiosk/kiosk.iso',
    notify => Exec['ImagePorteus']
  }

  exec { 'ImagePorteus':
    command => '/usr/bin/dd if=/root/kiosk.iso of=/dev/sda1 bs=1M',
    refreshonly => true
  }
}
