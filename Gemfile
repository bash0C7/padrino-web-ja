source :rubygems

# Project requirements
gem 'rack-flash'
gem 'thin' # or mongrel
gem 'RedCloth'
gem 'popen4'

# Component requirements
gem 'haml'
gem 'bson_ext', '>=1.2.0', :require => nil
gem 'mongo_mapper'
gem 'diff-lcs', :require => 'diff/lcs'
gem 'disqus'
gem 'yui-compressor', :require => 'yui/compressor'
gem 'rdoc'
gem 'pdfkit'

# Test requirements
gem 'rspec', :group => "test"
platform :mri_18 do
 gem 'SystemTimer', :require => "system_timer", :group => "test"
end
gem 'rack-test', :require => "rack/test", :group => "test"

# Padrino EDGE
# %w(core gen helpers mailer admin cache).each do |gem|
#   gem 'padrino-' + gem, :path => '/src/padrino-framework/padrino-' + gem
# end
#
# gem 'padrino-contrib', :path => '/src/padrino-contrib'

gem 'padrino', '0.9.27'
gem 'padrino-contrib', '0.0.6'
