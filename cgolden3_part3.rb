def glob_match(filenames, pattern)
  pattern.gsub!(/[\*\?\.]/, '*' => '.*', '.' => '\.', '?' => '.')
  regexp = Regexp.new(pattern)
  filenames.select do |filename|
    filename =~ regexp
  end
end