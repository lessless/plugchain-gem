require 'helper'

describe  Plugchain do
  it "should have a version" do
    Plugchain::VERSION.wont_be_nil
  end
end