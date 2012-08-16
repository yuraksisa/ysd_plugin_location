#
# Routes
#
module Sinatra
    module ContentLocation
    
      def self.registered(app)
     
        # Add the local folders to the views and translations     
        app.settings.translations = Array(app.settings.translations).push(File.expand_path(File.join(File.dirname(__FILE__), '..', 'i18n')))       

        #
        # Serves static content from the extension
        #
        app.get "/location/*" do
            
           serve_static_resource(request.path_info.gsub(/^\/location/,''), File.join(File.dirname(__FILE__), '..', 'static'), 'location')
            
        end  
       
       end
       
     end # ContentPhoto
end # Sinatra