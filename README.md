# Fakemenot

Fakemenot is an simple email validator that checks for DNS as well as uses regex functions to check the email for the right length and accepted characters. It utilizes the free Email Validator API over at mashape: https://market.mashape.com/pozzad/email-validator-1. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fakemenot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fakemenot

## Usage

1. Sign up for a free Mashape user account utilizing the Email Validator API (https://market.mashape.com/pozzad/email-validator-1) in order to acquire a free API Key.

2. Create a fakemenote config file and add your API key. For example:

```ruby
# config/fakemenot_config.yml

API_KEY: "a893SDakj2j4AaDDKLJ11oDPFvjsnDYt40AeXMXaD"
```

3. You can now test any email string with the #valid_email(email) method. For example:

```ruby
email = "john@gmail.com"
valid_email(email)

# => true

email = "FAk#$!@fkaskdj.ciom"
valid_email(email)

# => false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fakemenot. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

