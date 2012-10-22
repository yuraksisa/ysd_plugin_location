require 'ysd-plugins' unless defined?Plugins::Plugin

Plugins::SinatraAppPlugin.register :location do

   name=        'location'
   author=      'yurak sisa'
   description= 'Manages address (locations)'
   version=     '0.1'
   hooker       Huasi::LocationExtension
   sinatra_extension Sinatra::Location
   
end