
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fancify/version"

Gem::Specification.new do |spec|
  spec.name          = "fancify"
  spec.version       = Fancify::VERSION
  spec.authors       = ["Manoj Mohan"]
  spec.email         = ["m.manoj@linuxmail.org"]

  spec.summary       = %q{Ruby gem to fancify given word by changing the alphabets in it to numbers and special characters.}
  spec.description   = %q{This ruby gem will take a string with alphabets and convert its characters into equally human readable characters. For example:
    manoj => M@n0j
    manoj => M/\n*j
    P.S. The result of the input string will not be certain. Example: 'a' may turn into '/\' or '@' or '4'.}
  spec.homepage      = "https://github.com/manoj-makkuboy/fancify"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
