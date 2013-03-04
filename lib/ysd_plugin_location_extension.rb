require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener
require 'ysd_md_fieldset_location' unless defined?FieldSet::Location

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
      aspects << ::Plugins::Aspect.new(:location, app.t.aspect.location,
        FieldSet::Location, LocationAspectDelegate.new)
                                               
      return aspects
       
    end  
    
  end
end