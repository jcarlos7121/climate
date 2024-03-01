# frozen_string_literal: true

require 'rubycritic/rake_task'

namespace :ci do
  namespace :build do
    # Rubycritic, fails if ruby code logic is too wronchy, (complex)
    RubyCritic::RakeTask.new do |task|
      task.verbose = true
    end
  end
end
