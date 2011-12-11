class dhcp::server($host_list = "data/hosts") {
  package { 'isc-dhcp-server':
    ensure => latest
  }

  file { '/etc/dhcp/dhcpd.conf':
    content => template('dhcp/dhcpd.conf.erb'),
    require => Package['isc-dhcp-server']
  }
}
