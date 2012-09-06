require 'spec_helper'


describe Decoder do
  describe ".decode" do
    it "returns a string" do
      Decoder.decode("1").should be_a(String)
    end
  end
end
