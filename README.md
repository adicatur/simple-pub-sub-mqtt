# Simple Publish and Subscribe MQTT
Simple publish and subscribe MQTT using ruby 


## Subscribe example
MQTT::Client.connect('realtime_server') do |c|
  # If you pass a block to the get method, then it will loop
  c.get('hello_topic') do |topic,message|
    puts "#{topic}: #{message}"
  end
end

## Publish example
MQTT::Client.connect('realtime_server') do |c|
  c.publish('hello_topic', 'hi message')
end
