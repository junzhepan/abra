# Abra

Abra is a Ruby tool to parse Android APK information.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'abra'
```

And then execute:

```bash
    $ bundle install
```

Or install it yourself as:

```bash
    $ gem install abra
```

## Usage
Listing apk information

```ruby
require 'apk'
apk = Abra::APK.new(apk_path)
puts "[+]  Package: %s." % apk.package
puts "[+]  Version Name: %s." % apk.version_name
puts "[+]  Version Code: %s." % apk.version_code
puts "[+]  Label: %s." % apk.label
puts "[+]  Icon: %s." % apk.icon
puts "[+]  SDK Version: %s." % apk.sdk_version
puts "[+]  API Level: %s." % apk.api_level
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/abra. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).