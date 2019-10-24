require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'mqtt', :git => 'https://github.com/njh/ruby-mqtt.git'
end

require 'rubygems'
require 'mqtt'

# Publish example
MQTT::Client.connect('realtime_server') do |c|
  c.publish('hello_topic', 'hi message')
end
