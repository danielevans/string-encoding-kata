require 'spec_helper'


describe Decoder do
  describe ".decode" do
    it "returns an array" do
      Decoder.decode("1").should be_a(Array)
    end

    it "decodes empty string to empty array" do
      Decoder.decode("").should == []
    end

    it "decodes 1 to a" do
      Decoder.decode("1").should == ["a"]
    end

    it "decodes 2 to b" do
      Decoder.decode("2").should == ["b"]
    end

    it "decodes 3 to c" do
      Decoder.decode("3").should == ["c"]
    end

    it "decodes ambiguous strings" do
      Decoder.decode("11").should == ["aa","k"]
    end

    it "decodes very ambiguous strings" do
      Decoder.decode("2222").should == ['bbbb','bbv','bvb','vbb','vv']
    end

    it "properly ignores leading zero problems" do
      Decoder.decode("101").should == ["ja"]
    end

    it "returns empty array for impossible encodings" do
      Decoder.decode("0000").should == []
    end
  end
end
