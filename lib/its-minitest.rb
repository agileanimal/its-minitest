require "minitest/spec"
require "its-minitest/version"

# HACK! Adds its to minitest - extract this into a gem once we're happy with it.
class MiniTest::Spec
  def self.its attribute, &block
    describe "verify subject.#{attribute} for"  do
      let(:inner_subject) { subject.send(attribute) }

      it "verify subject.#{attribute} for" do
        inner_subject.instance_eval &block
      end
    end
  end
end
