namespace :ci do
  namespace :build do
    desc 'Clean logs'
    task :clean do
      File.exist?('log') || FileUtils.mkdir('log')
      FileUtils.rm_rf(Dir.glob('log/test.log'))
      FileUtils.rm_rf(Dir.glob('log/coverage*'))
      FileUtils.rm_rf(Dir.glob('log/rubocop.log'))
    end

    desc 'Run all tests'
    task commit: Climate.tasks
  end
end
