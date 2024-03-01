# frozen_string_literal: true

require 'rubocop/rake_task'

namespace :ci do
  namespace :build do
    RuboCop::RakeTask.new(:rubocop) do |t|
      t.options = %w[-foffenses -fprogress -olog/rubocop.log]
      t.fail_on_error = true
    end
  end
end
