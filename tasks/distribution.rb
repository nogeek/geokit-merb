require 'rake/gempackagetask'

$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'

spec = Gem::Specification.new do |s|
  s.name              = "geokit-merb"
  s.version           = "1.0"
  s.summary           = "A gemified merb port of Geokit-Rails"
  s.description       = "A gemified merb port of Geokit-Rails"
  s.author            = "Bill Eisenhauer & Andre Lewis, small portions by Alex Caudill"
  s.email             = "alex@erudified.com"
  s.homepage          = "http://www.erudified.com"
  s.has_rdoc          = true
  s.rdoc_options     << "--title" << "Geokit-Merb -- Geolocation for Merb/ActiveRecord" <<
                        "--line-numbers"
  s.rubyforge_project = "thinking-sphinx"
  s.test_files        = FileList["test/**/*"]
  s.files             = FileList[
    "lib/**/*.rb",
    "MIT-LICENSE",
    "README.markdown",
    "Rakefile",
    "tasks/**/*.rb",
    "tasks/**/*.rake"
  ]
end

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end

desc "Build gemspec file"
task :build do
  File.open('geokit-merb.gemspec', 'w') { |f| f.write spec.to_ruby }
end
