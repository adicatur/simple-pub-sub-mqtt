require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'mqtt', :git => 'https://github.com/njh/ruby-mqtt.git'
end

require 'rubygems'
require 'mqtt'

# Subscribe example
MQTT::Client.connect('realtime_server') do |c|
  # If you pass a block to the get method, then it will loop
  c.get('hello_topic') do |topic,message|
    puts "#{topic}: #{message}"
  end
end
