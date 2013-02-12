# Its Minitest

I miss ```its``` in minitest so here's a hack to get it back in.

Right now it doesn't support the array syntax for its.

## Status 
[![Gem Version](https://badge.fury.io/rb/its-minitest.png)](http://badge.fury.io/rb/its-minitest)
[![Build Status](https://travis-ci.org/agileanimal/its-minitest.png?branch=master)](https://travis-ci.org/agileanimal/its-minitest)

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

## License

Copyright (c) 2013 Mark Madsen

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
