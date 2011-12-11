Given /^a hosts file with$/ do |content|
  @host_list = '/tmp/host.list'
  File.open(@host_list, 'w') do |file|
    file.puts content
  end
end

Given /^a node of class "([^"]*)" using this file$/ do |klass|
  @facts['hostname'] = 'dhcp_server'
  @klass = { klass => { 'host_list' => @host_list } }
end

Then /^file "([^"]*)" should contain$/ do |file_name, content|
  file = file(file_name)
  file.should contain(content)
end
