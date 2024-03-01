# frozen_string_literal: true

require_relative 'lib/climate/version'

Gem::Specification.new do |spec|
  spec.name = 'climate'
  spec.version = Climate::VERSION
  spec.authors = ['Juan Hinojo']
  spec.email = ['jchinojob7@gmail.com']

  spec.summary = 'Configurations for CI tests'
  spec.description = 'Configurations for CI tests'
  spec.homepage = 'https://github.com/jcarlos7121'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/jchinojob/climate'
  spec.metadata['changelog_uri'] = 'https://github.com/jchinojob/climate/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_runtime_dependency('brakeman')
  spec.add_runtime_dependency('minitest-reporters')
  spec.add_runtime_dependency('rubocop')
  spec.add_runtime_dependency('rubycritic')
  spec.add_runtime_dependency('simplecov')
  spec.add_runtime_dependency('simplecov-rcov')
  spec.add_runtime_dependency('simplecov-summary')
  spec.add_runtime_dependency('yard')
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
