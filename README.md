# Its::Minitest

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'its-minitest'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install its-minitest

## Usage

```ruby
  describe 'its minitest syntax' do
    subject{ 1337 }

    its(:to_int){ must_equal 1337 }
    its(:to_int){ must_be :> , 1336 }
    its(:to_int){ must_be :< , 1338 }
    its(:to_s){ must_equal "1337" }
    its(:even?){ must_equal false }
    its(:to_s){ wont_be_empty }
    its(:to_s){ wont_equal "1338" }
    its(:to_s){ must_be_instance_of String }
    its(:to_s){ wont_be_instance_of 1337.class }
  end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
