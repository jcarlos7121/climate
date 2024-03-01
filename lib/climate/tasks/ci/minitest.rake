# frozen_string_literal: true

namespace :ci do
  namespace :build do
    desc 'Run Minitest'
    task :minitest do
      require 'minitest'
      require 'minitest/autorun'
      require 'minitest/reporters'

      Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

      Dir.glob('test/**/*_test.rb').each do |file|
        require File.expand_path(file)
      end
    end
  end
end
