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

  RSpec::Matchers.define :contain do |expected|
    match do |resource|
      resource['content'].include?(expected)
    end

    failure_message_for_should do |resource|
      "expected #{resource} to contain\n#{expected}\n"
    end
  end
end
