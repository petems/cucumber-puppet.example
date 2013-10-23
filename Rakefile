require "rubygems"
require 'appraisal'
require "bundler/setup"
require 'cucumber-puppet/rake/task'

CucumberPuppetRakeTask.new do |t|
  t.cucumber_opts = %w{--format progress}
end

task :default => :cucumber_puppet