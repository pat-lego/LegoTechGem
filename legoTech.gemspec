Gem::Specification.new do |spec|
  spec.name = "legoTech_gem"
  spec.version = "0.0.5"
  spec.authors = ["Patrique Legault"]
  spec.email = ["patrique.legault@gmail.com"]
  spec.summary = %q{A Ruby library used to test forms using browser automation}
  spec.description = %q{A lightweight testing framework that utilizes selenium to allow developers to write test cases}
  spec.homepage = "https://www.pat-lego.io"
  spec.license = "MIT"
  spec.files = Dir.glob("{lib}/**/*.rb") + %w(README.md legoTech.gemspec Gemfile)
  spec.require_paths = ["lib"]
  #   spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  #   spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "selenium-webdriver", "~> 3.142.7"
end
