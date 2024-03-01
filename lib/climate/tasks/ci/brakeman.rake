# frozen_string_literal: true

require 'brakeman'

namespace :ci do
  namespace :build do
    desc 'Run Brakeman'
    task :brakeman, :output_files do |t, args|
      files = args[:output_files].split(' ') if args[:output_files]
      report = Brakeman.run app_path: ".", output_files: files, print_report: true

      if report.checks.warnings.any?
        fail "Found #{report.checks.warnings.length} warnings, should be zero."
      end

      if report.checks.warnings.length != 0 || report.checks.all_warnings.length != 0
        puts "Found #{report.checks.all_warnings.length} view warnings, should be 0."
        puts "Found #{report.checks.warnings.length} security warnings, should be 0."
        puts "Found #{report.errors.length} parse errors (these can be ignored)."
        fail "!!! Brakeman found warnings that need to be fixed !!!"
      end
    end
  end
end
