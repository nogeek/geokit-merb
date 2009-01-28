require 'geokit'
require 'geokit-merb/defaults'
require 'geokit-merb/acts_as_mappable'

# Automatically mix in distance finder support into ActiveRecord classes.
ActiveRecord::Base.send :include, GeoKit::ActsAsMappable
