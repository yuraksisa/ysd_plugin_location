require 'ysd-plugins' unless defined?Plugins::Plugin
require 'ysd_plugin_content_location_extension'

Plugins::SinatraAppPlugin.register :content_location do

   name=        'content location'
   author=      'yurak sisa'
   description= 'Add location to the content'
   version=     '0.1'
   hooker       Huasi::ContentLocationExtension
   sinatra_extension Sinatra::ContentLocation
end