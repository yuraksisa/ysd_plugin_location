Gem::Specification.new do |s|
  s.name    = "ysd_plugin_location"
  s.version = "0.1.9"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2012-03-14"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb','views/**/*.erb','i18n/**/*.yml','static/**/*.*'] 
  s.description = "Extension to manage location or address"
  s.summary = "Extension to manage location or address"
  
  s.add_runtime_dependency "ysd_md_location", ">= 0.2.0"

  s.add_runtime_dependency "ysd_core_plugins"
  
  s.add_runtime_dependency "ysd_yito_core"     # Yito core services
  s.add_runtime_dependency "ysd_yito_js"       # Yito JS library
  
end
