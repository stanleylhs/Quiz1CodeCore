require "benchmark"

def even_loop(n)
  result = []
  num = 2
  while (result.length < n) do 
    result << num
    num += 2
  end
  result
end

def even_recursion(n)
  result = []
  1.upto(n) do |i|
    result << even_recursive_op(i)
  end
  result
end

def even_recursive_op(n)
  if (n == 1) then return 2 end 
  2 + even_recursive_op(n-1)
end

p even_loop(5)
p even_recursion(5)

Benchmark.bm do |x|
  x.report do
    100_000.times {even_loop(5)}
  end
end

Benchmark.bm do |x|
  x.report do
    100_000.times {even_recursion(5)}
  end
end

p "Loop is faster!"