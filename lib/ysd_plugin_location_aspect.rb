module Huasi
  #
  # Location aspect
  #
  class LocationAspectDelegate
    include ContentManagerSystem::Support
    
    #
    # Custom representation (the attachments)
    #
    # @param [Hash] the context
    # @param [Object] the element
    #
    def custom(context={}, element)
    
      app = context[:app]
      
      renderer = UIFieldSetRender::FieldSetRender.new('location', app)
      renderer.render('view','',{:element => element})
    
    end      
    
    #
    # Custom representation (the comment) 
    #
    # @param [Hash] context
    # @param [Object] object
    #
    def custom_extension(context={}, element)

      app = context[:app]
    
      renderer = UIFieldSetRender::FieldSetRender.new('location', app)
      renderer.render('viewextension','',{:element => element})
    
    end       
    
    # ========= Entity Management extension ========= 
        
    #
    # Information
    #
    def element_info(context={})
      app = context[:app]
      {:id => 'location', :description => "#{app.t.content.content_location.description}"} 
    end

    #
    # Renders the tab
    #
    def element_form_tab(context={})
      app = context[:app]
      info = element_info(context)
      render_tab("#{info[:id]}_form", info[:description])
    end

    #
    # Add fields to edit the location information in the content form
    #
    def element_form(context={})
      
      app = context[:app]
      
      renderer = UIFieldSetRender::FieldSetRender.new('location', app)      
      location_form = renderer.render('form', 'em')
    
    end
    
    #
    # Renders the tab
    #
    def element_template_tab(context={})
      app = context[:app]
      info = element_info(context)
      render_tab("#{info[:id]}_template", info[:description])
    end    
    
    #
    # Show the location information in the content render
    #
    def element_template(context={})
    
       app = context[:app]
       
       renderer = UIFieldSetRender::FieldSetRender.new('location', app)      
       location_template = renderer.render('view', 'em')
              
    end

  
  end
end