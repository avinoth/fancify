# Fancify

This ruby gem will take a string with alphabets and convert its characters into equally human readable characters. For example:
  manoj => M@n0j
  manoj => M/\n*j

  P.S. The result of the input string will not be certain. Example: 'a' may turn into '/\' or '@' or '4'.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fancify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fancify

## Usage

    > require 'fancify'
    > Fancify.fancify('stringToBeFancified')

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/manoj-makkuboy/fancify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Fancify project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/manoj-makkuboy/fancify/blob/master/CODE_OF_CONDUCT.md).
