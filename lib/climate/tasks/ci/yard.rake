# frozen_string_literal: true

require 'yard'

namespace :ci do
  namespace :build do
    # Yard, generates documentation and verifies coverage
    desc 'Generate documentation'
    YARD::Rake::YardocTask.new :documentation_generate

    desc 'Verifies documentation coverage'
    task :documentation_coverage do
      Rake::Task['ci:build:documentation_generate'].invoke

      klasses = YARD::Registry.load!.all(:class, :module, :root)

      ks = klasses.map do |k|
        total              = k.meths.size.to_f
        undocd             = k.meths.select { |m| m.docstring.empty? }.size.to_f

        doc_method_percent = undocd.zero? ? 0.0 : (undocd / total)

        [k, doc_method_percent]
      end

      sorted = ks.sort { |(_, percent), (_, percent2)| percent <=> percent2 }
      values = sorted.map do |(k, p)|
        puts "#{k} - #{p * 100}% undocumented"
        100 - p * 100
      end

      coverage = values.reduce(:+) / values.count

      puts "Project covered in #{coverage}%!"
      fail if coverage < 90
    end
  end
end
