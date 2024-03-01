require 'rspec/core/rake_task'

namespace :ci do
  namespace :build do
    # Do not show this task in the task list
    RSpec::Core::RakeTask.new(:spec_internal) do |t|
      t.rspec_opts = '--profile'
    end
  end
end
