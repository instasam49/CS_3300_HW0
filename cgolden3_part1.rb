def sum(ary)
  sum = 0
  if
    ary.empty?
    sum
  else
    ary.each do |a|
      sum += a
    end
    sum
  end
end

def max_2_sum(ary)
  if
    ary.empty?
    0
  elsif
    ary.size == 1
    ary[0]
  else
    ary.sort! do |x, y|
      y <=> x
    end
    ary[0] + ary[1]
  end
end

def sum_to_n?(ary, n)
  if
    ary.empty? || ary.size == 1
    false
  elsif
    ary.combination(2).detect do |a, b|
      a + b == n
    end
    true
  end
end

