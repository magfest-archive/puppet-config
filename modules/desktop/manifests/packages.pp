class desktop::packages {
  schedule { 'everyday':
    period => daily
  }
  exec { '/usr/bin/pacman --noconfirm -U http://http.magfest.net/facter2-2.4.4-1-any.pkg.tar.xz && touch /var/lib/facter2':
    creates => '/var/lib/facter2'
  } ->
  exec { '/usr/bin/pacman --noconfirm -U http://http.magfest.net/puppet3-3.8.2-1-any.pkg.tar.xz && touch /var/lib/puppet3':
    creates => '/var/lib/puppet3'
  } ->
  exec { '/usr/bin/pacman -Syu --noconfirm':
    user => root,
    schedule => everyday
  }
  package { ['mate', 'lightdm', 'xorg-server', 'xorg-server-utils']:
    ensure => present
  }
  package { ['xorg-xinit', 'mate-terminal', 'bind-tools']:
    ensure => present
  }
  package { ['xorg-xrandr', 'mate-extra', 'yelp', 'curl']:
    ensure => present
  }
  package { ['tcpdump', 'traceroute', 'wget', 'bzip2', 'gzip', 'accountsservice']:
    ensure => present
  }
  package { ['tar', 'zip', 'unzip', 'p7zip', 'xz', 'arj', 'unrar']:
    ensure => present
  }
  package { ['unace', 'caja', 'atril', 'pluma', 'stone-soup', 'rxvt']:
    ensure => present
  }
  package { ['python2', 'python2-pygame', 'base-devel']:
    ensure => present
  }
  package { ['networkmanager', 'network-manager-applet', 'dhclient']:
    ensure => present
  }
  package { 'xf86-input-synaptics':
    ensure => present
  }
}
