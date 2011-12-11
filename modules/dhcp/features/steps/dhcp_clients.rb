Given /^a file containing DHCP clients$/ do |file_content|
  File.open("/tmp/dhcp.clients", "w") { |file|
    file.puts(file_content)
  }
end

When /^I call dhcp_clients with this file$/ do
  @result = call_function('dhcp_clients', ['/tmp/dhcp.clients'])
end

Then /^it should return the parsed list of clients$/ do
  @result.should == [
    { :name => 'one.example.com', :ip => '1.1.1.1', :mac => '1:1:1:1:1:1' },
    { :name => 'two.example.com', :ip => '1.1.1.2', :mac => '1:1:1:1:1:2' }
  ]
end
