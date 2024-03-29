# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mdpreview/version'
require 'rake'

Gem::Specification.new do |gem|
  gem.name          = "bee_api"
  gem.version       = Mdpreview::VERSION
  gem.authors       = ["shiren1118"]
  gem.email         = ["shiren1118@126.com"]
  gem.description   = %q{bee api viewer}
  gem.summary       = %q{beeframework test api viewer}
  gem.homepage      = ""
  gem.files         = FileList['lib/**/*.rb',
                        'bin/*',
                        'vendor/**/**/**',
                        'test/**/*'].to_a
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
