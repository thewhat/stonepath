$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))



module StonePath
  require 'stonepath/railtie' if defined?(Rails)

  require 'stonepath/task'
  require 'stonepath/work_bench'
  require 'stonepath/work_item'
  require 'stonepath/work_owner'
end

require 'rubygems'
require 'active_record'
require "stonepath/config"

# I want to move these into init.rb, but for some reason, the way rails processes the
# init.rb chokes on load.  I suspect this is an artificial issue because of the way the
# embedded test app works.
load File.expand_path( File.dirname(__FILE__)) + '/stonepath/extensions/action_view.rb'
