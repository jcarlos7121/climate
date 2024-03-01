# Climate

## Simple Tool for Code Climate CI

This is a small gem that preconfigures tasks that can be extended an included multiple as part of a whole CI testing suite

## Installation

Install the gem and add to the application's Gemfile

```ruby
gem 'climate', github: 'jcarlos7121/climate'
```

## Usage

Everything related to Rubocop, Rspec and profiling still must be configured for
your project, so remember to include all configurations on your own root folder
of your project.

In your application.rb (if using Rails) include the following configuration:

```ruby
Climate.tasks = ['ci:build:clean', 'ci:build:simplecov', 'ci:build:rubocop', 'ci:build:brakeman', 'ci:build:rubycritic']
```

This is a running

* Simplecov (Runs and checks for testing coverage)
* Rubocop (Checks for Syntax)
* Brakeman (Checks for Security vulnerabilities in your code)
* Rubycritic (Checks for code complexity)

You can add extra commands and customize the climate tasks and add custom tasks
of your own.

# Running

```ruby
bundle exec rake ci:build:commit
```

This is gonna run together all the commands above

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[jcarlos7121]/climate. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/climate/blob/develop/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Climate project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/climate/blob/develop/CODE_OF_CONDUCT.md).
