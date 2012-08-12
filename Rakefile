require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('snowflake', '0.1.0') do |p|
  p.description    = 'Generate a UUID column on ActiveRecord models'
  p.url            = 'http://github.com/strider-/snowflake'
  p.author         = 'Michael Tighe'
  p.email          = 'striderIIDX@gmail.com'
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
