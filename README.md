# MojiNestedHash

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'moji_nested_hash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install moji_nested_hash

## Usage

You can extend the hash and use the following two methods.

- nested_keys
- nested_key?

### nested_keys
Return all nested keys

```ruby
man = {taro: {age: '15', sex: 'male'}}
man.nested_keys
=> [:taro, :age, :sex]
``` 
### nested_key?
It checks whether it is included in all nested keys
```ruby
man = {taro: {age: '15', sex: 'male'}}
man.nested_key? :sex
=> true
``` 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mojihige/moji_nested_hash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MojiNestedHash project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mojihige/moji_nested_hash/blob/master/CODE_OF_CONDUCT.md).
