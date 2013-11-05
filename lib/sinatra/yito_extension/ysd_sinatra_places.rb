module Sinatra
  module YitoExtension
    #
    # Sinatra extension to show places
    #
    module Places
      
      def self.registered(app)
        
        app.get "/places" do
          
          load_page(:places)

        end

      end

    end
  end
end