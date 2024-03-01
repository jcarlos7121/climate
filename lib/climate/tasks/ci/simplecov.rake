# frozen_string_literal: true

namespace :ci do
  namespace :build do
    # Simplecov, fails if test coverage is not met to 95
    # please see file .simplecov in root project folder for more info.
    desc 'Run rspec with code coverage analysis and profile option'
    task :simplecov do
      ENV['COVERAGE'] = 'true'
      Rake::Task['ci:build:spec_internal'].invoke
    end
  end
end
