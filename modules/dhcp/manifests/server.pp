class dhcp::server {
  package { 'isc-dhcp-server':
    ensure => latest
  }
}
