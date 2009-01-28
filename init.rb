# Load modules and classes needed to automatically mix in ActiveRecord and 
# ActionController helpers.  All other functionality must be explicitly 
# required.
require 'geokit' #requires the geokit gem
require 'geokit-merb/defaults'
require 'geokit-merb/acts_as_mappable'

# Automatically mix in distance finder support into ActiveRecord classes.
ActiveRecord::Base.send :include, GeoKit::ActsAsMappable
