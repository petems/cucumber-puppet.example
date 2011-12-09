require 'rspec/expectations'

module CucumberPuppet::Matchers
  RSpec::Matchers.define :be_latest do
    match do |resource|
      resource['ensure'] == 'latest'
    end

    failure_message_for_should do |resource|
      "#{resource}\nexpected: ensure => latest\n     got: ensure => #{resource['ensure']}"
    end
  end
end
