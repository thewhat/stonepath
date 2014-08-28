require 'rake'
require 'rake/testtask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "stonepath"
    gemspec.summary = "Stonepath: stateful workflow modeling for rails"
    gemspec.description = "Stonepath: stateful workflow modeling for rails"
    gemspec.email = "aj@thewhat.co"
    gemspec.homepage = "http://github.com/thewhat/stonepath"
    gemspec.description = "Stateful workflow modeling for Rails"
    gemspec.authors = ["David Bock"]
    gemspec.add_dependency('activerecord','>= 3.0.0')
    gemspec.add_dependency('aasm','>= 2.2.0')
    gemspec.add_dependency('sentient_user','>= 0.3.2')
  end

    Jeweler::GemcutterTasks.new

rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end
