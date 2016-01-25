def even_loop(n)
  result = []
  1.upto(n)do |i|
    result << i if (i % 2 == 0)
  end
end

def even_recursion(n)
