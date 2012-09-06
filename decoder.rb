class Decoder
  def self.decode(encoded_str)
    ("a".ord + encoded_str.to_i - 1).chr
  end
end
