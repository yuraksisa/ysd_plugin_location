require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Huasi Profile Extension
#
module Huasi

  class ContentLocationExtension < Plugins::ViewListener
    include ContentManagerSystem::Support

    # ========= Page Building ============

    #
    # It gets the scripts used by the module
    #
    # @param [Context]
    #
    # @return [Array]
    #   An array which contains the css resources used by the module
    #
    def page_script(context={})
    
      ['https://maps.google.com/maps/api/js?sensor=false',
       '/location/js/ysd.location.viewer.js']
             
    end    

        
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