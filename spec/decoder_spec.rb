require 'spec_helper'


describe Decoder do
  describe ".decode" do
    it "returns a string" do
      Decoder.decode("1").should be_a(String)
    end

    it "1 decodes to a" do
      Decoder.decode("1").should == "a"
    end

    it "2 decodes to b" do
      Decoder.decode("2").should == "b"
    end

    it "3 decodes to c" do
      Decoder.decode("3").should == "c"
    end

    it "26 decodes to z" do
      Decoder.decode("26").should == "z"
    end
  end
end
