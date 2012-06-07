require 'ysd_md_content'
require 'ysd_md_fieldset_location'

module ContentManagerSystem

  # Opens the class Content to include the location information
  class Content
    include FieldSet::Location
  end
  
end #ContentManagerSystem
