[![Build Status](https://travis-ci.org/ruby-hl7/ruby-hl7-zcf.svg)](https://travis-ci.org/ruby-hl7/ruby-hl7-zcf)

# HL7::ZCF

Adds support for the ZCF segment to [`ruby-hl7`](https://github.com/ruby-hl7/ruby-hl7)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby-hl7-zcf'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-hl7-zcf

## Usage

```ruby
msg = HL7::Message.parse(hl7_with_zcf)
Array(msg[:ZCF]).each do |zcf|
  puts "Custom field 1: #{zcf.custom_field_1}"
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ruby-hl7-zcf/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
