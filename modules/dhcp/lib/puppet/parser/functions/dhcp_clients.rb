module Puppet::Parser::Functions
  newfunction(:dhcp_clients, :type => :rvalue) do |args|
    raise Puppet::ParseError, ("dhcp_clients(): missing filename argument") unless args.length == 1

    source = args[0]
    clients = []

    file = File.new(source, 'r')
    while (line = file.gets)
      next if line =~ /^#/
      next if line =~ /^$/
      (ip, name, mac) = line.split
      clients << { :name => name, :ip => ip, :mac =>mac }
    end

    clients
  end
end
