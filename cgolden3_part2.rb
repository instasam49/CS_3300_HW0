def frequency_string(chars)
  frequency_ary = {}
  chars.each do |char|
    if frequency_ary.has_key? char
      frequency_ary = 1
    else
      frequency_ary[char] += 1
    end
  end
  frequency_str = ''
  frequency_ary.each do |char, freq|
    frequency_str << char << freq
  end
  frequency_str
end

def is_anagram_of?(string1, string2)
  string1.chars.sort == string2.chars.sort
end

class String
  def is_anagram_of?(string)
    self.chars.sort == string.chars.sort
  end
end