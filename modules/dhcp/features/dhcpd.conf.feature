Feature: Create static host entries from file

  Scenario: Create an entry for each host
    Given a hosts file with
      """
      1.1.1.1 one.example.com 1:1:1:1:1:1
      1.1.1.2 two.example.com 1:1:1:1:1:2
      """
    And a node of class "dhcp::server" using this file
    When I compile its catalog
    Then file "/etc/dhcp/dhcpd.conf" should contain
      """
      host one.example.com {
        hardware ethernet 1:1:1:1:1:1;
        fixed-address 1.1.1.1;
      }

      host two.example.com {
        hardware ethernet 1:1:1:1:1:2;
        fixed-address 1.1.1.2;
      }
      """
