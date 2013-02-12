require_relative "spec_helper"
require 'minitest/spec'
require 'minitest/autorun'  # arranges for minitest to run (in an exit handler, so it runs last)


describe ItsMinitest do

  it 'should have a version number' do
    ItsMinitest::VERSION.wont_be_nil
  end

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
end
