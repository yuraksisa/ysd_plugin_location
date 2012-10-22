require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Huasi Profile Extension
#
module Huasi

  class LocationExtension < Plugins::ViewListener
        
    # ========= Aspects ==================
    
    #
    # Retrieve an array of the aspects defined in the plugin
    #
    # The attachment aspect (complement)
    #
    def aspects(context={})
      
      app = context[:app]
      
      aspects = []
      aspects << ::Plugins::Aspect.new(:location, app.t.aspect.location, [:entity], LocationAspectDelegate.new)
                                               
      return aspects
       
    end  
    
  end
end