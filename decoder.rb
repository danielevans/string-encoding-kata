class Decoder
  def self.decode(encoded_str)
    return [] if encoded_str.empty?

    decodings = []
    26.times do |i|
      char = (i + "a".ord).chr
      encoded_char = (i + 1).to_s

      if encoded_str.start_with?(encoded_char) && !encoded_str.start_with?(encoded_char + "0")
        if encoded_str == encoded_char
          decodings.push char
        else
          decode(encoded_str.gsub(/^#{encoded_char}/, '')).each do |possability|
            decodings.push "#{char}#{possability}"
          end
        end
      end
    end
    decodings
  end
end
