Feature: Read DHCP clients from file
  File format: ip_address hostname mac_address

  Scenario: Read client list from file
    Given a file containing DHCP clients
      """
      1.1.1.1 one.example.com 1:1:1:1:1:1
      # ignores comments and empty lines

      1.1.1.2 two.example.com 1:1:1:1:1:2
      """
    When I call dhcp_clients with this file
    Then it should return the parsed list of clients
