Gem::Specification.new do |spec|
  spec.name          = "json_helper"
  spec.version       = "0.1.0"
  spec.authors       = ["drEnilight"]
  spec.email         = ["vladyslav.romaniuk@outlook.com"]
  spec.summary       = %q{Write a short summary, because RubyGems requires one.}

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency 'pry'
end
