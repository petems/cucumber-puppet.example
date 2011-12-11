class dhcp::server {
  package { 'isc-dhcp-server':
    ensure => latest
  }

  file { '/etc/dhcp/dhcpd.conf':
    content => template('dhcp/dhcpd.conf.erb'),
    require => Package['isc-dhcp-server']
  }
}
