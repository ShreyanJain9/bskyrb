# Bskyrb

- [Installation](#installation)
- [Usage](#usage)
- [Development](#development)
  - [Type checking](#type-checking)
  - [Formatting](#formatting)
- [Contributing](#contributing)
- [License](#license)
- [Code of Conduct](#code-of-conduct)

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add bskyrb

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install bskyrb

## Usage

Create a new session:

`bsky = ATProto::Session.new(username, password)`
`bsky.post("Hello from bskyrb!")`

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Type checking

bskyrb uses [.rbs type definitions](https://github.com/ruby/rbs). To check for accuracy, run `bin/typecheck`. Not all of the output will be useful, especially during rapid development, but it is a good idea to have types at least for the bluesky objects.

Use the [`rbs collection` tool](https://github.com/ruby/rbs/blob/master/docs/collection.md) to manage definitions for third-party dependencies, for example HTTParty.

(I'm actually a little fuzzy on rbs, especially for use in a gem, so please correct me! In fact I keep getting weird DuplicatedDeclaration errors! -@thearchduke)

### Formatting

So nobody has to argue about formatting, bskyrb uses the `standard` gem. Run `bin/format` to format the code in this repo.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/bskyrb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/bskyrb/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Bskyrb project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/bskyrb/blob/master/CODE_OF_CONDUCT.md).
