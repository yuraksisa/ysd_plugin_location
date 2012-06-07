require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Huasi Profile Extension
#
module Huasi

  class ContentLocationExtension < Plugins::ViewListener
    include ContentManagerSystem::Support
        
    #
    # Information
    #
    def content_element_info(context={})
      app = context[:app]
      {:id => 'content_location', :description => "#{app.t.content.content_location.description}"} 
    end

    #
    # Renders the tab
    #
    def content_element_form_tab(context={})
      app = context[:app]
      info = content_element_info(context)
      render_tab("#{info[:id]}_form", info[:description])
    end

    #
    # Add fields to edit the location information in the content form
    #
    def content_element_form(context={})
      
      app = context[:app]
      
      renderer = UIFieldSetRender::FieldSetRender.new('location', app)      
      location_form = renderer.render('form', 'em')
    
    end
    
    #
    # Renders the tab
    #
    def content_element_template_tab(context={})
      app = context[:app]
      info = content_element_info(context)
      render_tab("#{info[:id]}_template", info[:description])
    end    
    
    #
    # Show the location information in the content render
    #
    def content_element_template(context={})
    
       app = context[:app]
       
       renderer = UIFieldSetRender::FieldSetRender.new('location', app)      
       location_template = renderer.render('view', 'em')
              
    end
    
  end
end